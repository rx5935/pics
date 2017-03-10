float theta;   
int rNum = 0;

void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  // Let's pick an angle 0 t
  translate(width/4,height * 3 /4 );
  float length = 400;
  fractalize(length);
  rotate(- PI/2);
  fractalize(length);
  rotate(- PI/2);
  fractalize(length);
  rotate(- PI/2);
  fractalize(length);
} 

void fractalize(float lengthOfLine) {
  float newLength = lengthOfLine / 3;
  if(newLength > 1) {
    fractalize(newLength);
    rotate(- PI/2);
    fractalize(newLength);
    rotate(PI/2);
    fractalize(newLength);
    rotate(PI/2);
    fractalize(newLength);
    rotate(- PI/2);
    fractalize(newLength);
  } else {
    line(0,0,newLength, 0);
    translate(newLength, 0);
    line(0,0,0, - newLength);
    translate(0,- newLength);
    line(0, 0, newLength, 0);
    translate(newLength, 0);
    line(0, 0, 0, newLength);
    translate(0, newLength);
    line(0,0,newLength, 0);
    translate(newLength, 0);
  }
  if(mousePressed) {
   save("pic6.jpeg"); 
  }
}