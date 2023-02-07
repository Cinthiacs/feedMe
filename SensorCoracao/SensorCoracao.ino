#include "BluetoothSerial.h"

int sensorPort = 4;

long timer = millis();
int count = 0;
bool ultimoSinal = false;
float sum = 0;
int detect = 2000;
float detections = 5;
int ledPin = 19;

BluetoothSerial SerialBT;

void setup() {
  setCpuFrequencyMhz(80);
  Serial.begin(115200);
  SerialBT.begin("ESP32test"); //Bluetooth device name
  Serial.println("The device started, now you can pair it with bluetooth!");
  pinMode(ledPin, OUTPUT);
}

void loop() {
  int value = analogRead(sensorPort);
  Serial.println(value);
  if ( count >= detections ) {
    float media = (sum / count) / 1000.0f;
    float freq = 1.0f / media;
    SerialBT.printf("%d bpm\r\n", (int)ceil(freq * 60 ));
    count = 0;
    sum = 0;
  } else {
    if (ultimoSinal == false) {
      if ( value > detect ) {
        digitalWrite(ledPin, HIGH);
        ultimoSinal = true;
        count++;
        sum += millis() - timer;
        timer = millis();
      }
    } else {
      digitalWrite(ledPin, LOW);
      if ( value < detect ) {
        ultimoSinal = false;
      }
    }
  }

  /*if( millis() - timer > 4000 ){
    SerialBT.printf("%d bpm\r\n", count * 15);
    count = 0;
    timer = millis();
    }else{
    int value = analogRead(sensorPort);
    if(ultimoSinal == false){
      if( value > 2200 ){
        ultimoSinal = true;
        count++;
      }
    }else{
      if( value < 2200 ){
        ultimoSinal = false;
      }
    }

    Serial.println(value);
    }*/

  delay(20);
}
