int ledPin 12;
void setup() {
 pinMode(ledPin, OUTPUT);
Serial.begin(9600);
}
 
void loop(){
if(Serial.available()){
if(Serial.read=1){
digitalWrite(ledPin, HIGH);
}
}
}