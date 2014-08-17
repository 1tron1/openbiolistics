String one[]=loadStrings("lines.txt"); //this histogram is made when the tissue is first placed
String two[]=loadStrings("dvals.txt");// txt file displaying histogram values
size(640, 360);
PrintWriter ouput;
PImage histoimg;
image(img, 0, 0);
int[] hist = new int[256];
ouput= createWriter("dvals.txt");
import processing.video.*;
Capture dacam;
PImage img;
void setup() {
  img=(loadImage(a+".png"));
  size (640,480);
  dacam= new Capture(this, 320, 240, 30);
  dacam.start();
}
void draw() {
 if(dacam.available()) {
    dacam.read();
  }
  image(dacam, 0, 0);
 image(img, 0, 0);
 save("histoimg"+".png");
for (int i = 0; i < histoimg.width; i++) {
  for (int j = 0; j < histoimg.height; j++) {
    int bright = int(brightness(get(i, j)));
    hist[bright]++; 
    ouput.println(bright);
  }
}
}
void loop() {
float r=0;
  println(one.length);
  println(two.length);
  for( int t=0;r<one.length;r++){
    if(one[t] != two[t]) {
      textSize(50);
     text("MOVEMENT DETECTED",10,40); // lines 8 through 11 check for a Δ between dvals and lines, if there is a difference it will alert the users 
     start("dart exe file here");
}
}
}
