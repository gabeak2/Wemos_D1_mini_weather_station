#include <WiFiManager.h>
#include <WiFiClient.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <ArduinoJson.h>
#include <TM1640.h>

#define RAINLED D0
#define SDA D3 
#define SCL D4 
#define NTC D8
#define FUDGE 0
#define BRIGHTNESS 7

String open_weather_key = "9ca5c5c97ba38f517f7a22d15dd29749";
String city = "Santa Cruz";
String state_code = "CA";
String country_code = "US";

String server_path = "http://api.openweathermap.org/data/2.5/weather?q=" + city + "," + state_code + "," + country_code + "&units=imperial&APPID=" + open_weather_key;

float cur_temp;
float last_temp;
float outside_temp;

WiFiClient client;
TM1640 module(SDA,SCL,8);    // data, clock, 4 digits

//define functions
void wm_setup();
double temp_from_adc();
float make_http_request();
bool wifi_good = 0;
bool rainbool = 0;

WiFiManager wm;

void setup() {
  Serial.begin(115200);
  module.setupDisplay(true, BRIGHTNESS);
  pinMode(NTC, OUTPUT);
  cur_temp = temp_from_adc();
  wm_setup(); //set up WiFiManager - captive portal, etc.  
  pinMode(SDA,OUTPUT);
  pinMode(SCL,OUTPUT);
  pinMode(RAINLED, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  outside_temp = make_http_request();
  Serial.println(outside_temp);

  for(int i = 0; i < 200; i++){
    last_temp = cur_temp;
    cur_temp = temp_from_adc();
    cur_temp = (last_temp * 199.0 + cur_temp)/200.0; //weighted average to move slowly in presence of noise
    display_temps(cur_temp,outside_temp);
    Serial.println(cur_temp);
    delay(1000);
  }
//  delay(20000);
}

float make_http_request(){
  HTTPClient http;
  http.begin(client, server_path);
  int httpCode = http.GET();

  DynamicJsonDocument doc(2048);
  deserializeJson(doc, http.getStream());

  String rain = "Rain";
  String drizzle = "Drizzle";
  String thunderstorm = "Thunderstorm";
  String mist = "Mist";
  String snow = "Snow";
  
  if(rain.equals(doc["weather"][0]["main"].as<String>())){
    rainbool = 1;
  }
  else if(drizzle.equals(doc["weather"][0]["main"].as<String>())){
    rainbool = 1;
  }
  else if(thunderstorm.equals(doc["weather"][0]["main"].as<String>())){
    rainbool = 1;
  }
  else if(mist.equals(doc["weather"][0]["main"].as<String>())){
    rainbool = 1;
  }
  else if(snow.equals(doc["weather"][0]["main"].as<String>())){
    rainbool = 1;
  }
  else{
    rainbool = 0;
  }

  digitalWrite(RAINLED, rainbool);

  return doc["main"]["temp"].as<float>();
  http.end();
}

void display_temps(float inside_temp, float outside_temp){

  float temp = inside_temp;
  int hundreds = ((int)temp)/100;
  int tens = ( ((int)temp) % 100)/10;
  int ones = ((int)temp) % 10;
  int tenths = ( ((int)(temp*10))%10 );
  int nums[] = {hundreds,tens,ones,tenths};
  for(int i = 4 ; i < 8; i++){
//    Serial.println(nums[i-4]);
    if(i == 4){
      if(nums[i-4] != 0){
        module.setDisplayDigit(nums[i-4],i,false);
      }
      //else don't add leading 0
    }
    else if(i == 6){
      module.setDisplayDigit(nums[i-4],i,true);
    }
    else{
      module.setDisplayDigit(nums[i-4],i,false);
    }
  }

  temp = outside_temp;
  nums[0] = ((int)temp)/100;
  nums[1] = ( ((int)temp) % 100)/10;
  nums[2] = ((int)temp) % 10;
  nums[3] = ( ((int)(temp*10))%10 );

  for(int i = 0 ; i < 4; i++){
//    Serial.println(nums[i]);
    if(i == 0){
      if(nums[i] != 0){
        module.setDisplayDigit(nums[i],i,false);
      }
      //else don't display leading 0
    }
    else if(i == 2){
      module.setDisplayDigit(nums[i],i,true);
    }
    else{
      module.setDisplayDigit(nums[i],i,false);
    }
  }

  
}

double temp_from_adc(){
  //using coeffs from a 3rd order polynomial fit, calculate celcius temp
  //1.31350623e-07, -1.76328492e-04,  1.66228069e-01, -3.14308794e+01
  digitalWrite(NTC,HIGH);
  delay(50); //settling time
//  module.setupDisplay(false, BRIGHTNESS);
  long int tbuf = 0;
  int adc_vals[1000] = {0};
  for(int i = 0; i < 1000; i++){
    adc_vals[i] = (analogRead(A0)-1)*489/522;
    tbuf += adc_vals[i];
//    Serial.println(adc_vals[i]);
    delay(2);
  }

  
  module.setupDisplay(true, BRIGHTNESS);
  digitalWrite(NTC,LOW);
  double adc_val = tbuf/1000.0;
//  Serial.println(adc_val);
  double celcius_temp = -3.14308794*10 + (adc_val * 0.16622806) + (adc_val*adc_val * -.000176328492) + 
                      (adc_val*adc_val*adc_val*0.000000131351);
  double fahrenheit_temp = (celcius_temp * 1.8) + 32.0;
  return fahrenheit_temp - FUDGE;
}

void wm_setup(){
  //Sets up captive portal to use phone to connect to wifi
  //search for "APconnect" wifi network
  WiFi.mode(WIFI_STA);
//  WiFiManager wm; //wifi manager for phones to connect things
//  wm.resetSettings(); // to reset and re-connect through portal
  wm.setConfigPortalBlocking(true);
  wifi_good = wm.autoConnect("AutoConnectAP","password"); // password protected ap  
}
