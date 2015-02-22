#include<Serial.h>
#include <Servo.h>
 Serial.begin(9600)
Servo rightleft;
Servo forwardback;
 
 
int pos = 0;
int cooard=0;
void setup()
{
  pinMODE(10,OUTPUT);
  digitalWrite(10,LOW);
  forwardback.attach(11);
  rightleft.attach(9);
 
}
 
void loop()
{
  if (Serial.available()){
    byte=Serial.read();
 
  if (byte="r"){
   pos += 1;
   rightleft.write(pos);
   delay(1);
}
  if(byte="l"){
   pos-=1;
   rightleft.write(pos);
   delay(1);
}
   if(byte="f"){
   cooard+=1;
   forwardback.write(cooard);
   delay(1);
}
   if(byte="b"){
   cooard-=1;
   forwardback.write(cooard);
   delay(1);
}
   if(byte="z")
   digitalWrite(10,HIGHT);
  }
 