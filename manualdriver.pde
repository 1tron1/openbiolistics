char* byte="";
import processing.serial.*;
void setup(){
size(640,640);
Serial port;
println(Serial.list());
port= new Serial(this, Serial.list()[0], 9600);
 
}
void keyPressed(){
byte=key;
port.write(byte);
}