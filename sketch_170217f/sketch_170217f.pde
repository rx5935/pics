void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  // Let's pick an angle 0 t
  translate(width * 1 / 3,height * 2 / 3);
  float length = 300;
  fractalize(length);
  //line(0,0,length,0);
  //translate(length,0);
  rotate(- PI / 2);
  fractalize(length);
  //line(0,0,length,0);
  //translate(length,0);
  rotate(- PI / 2);
  fractalize(length);
  //line(0,0,length,0);
  //translate(length,0);
  rotate(- PI / 2);
  fractalize(length);
  //line(0,0,length,0);
  //translate(length,0);
  if(mousePressed) {
   save("pic8.jpeg"); 
  }
} 

void fractalize(float lengthOfLine) {
  float newLength = lengthOfLine / 3;
  if(newLength > 1) {
    fractalize(newLength);
    rotate(- PI / 2);
    fractalize(newLength);
    translate(-newLength, 0);
    rotate(PI / 2);
    fractalize(newLength);
    rotate(PI / 2);
    fractalize(newLength * 2);
    translate(-newLength * 2, 0);
    rotate(- PI / 2);
    fractalize(newLength);
  } else {
    line(0, 0, newLength, 0);
    translate(newLength, 0);
    rotate(- PI / 2);
    line(0, 0, newLength, 0);
    rotate(PI / 2);
    line(0, 0, newLength, 0);
    translate(newLength, 0);
    rotate(PI / 2);
    line(0, 0, 2 * newLength, 0);
    rotate(- PI / 2);
    line(0, 0, newLength, 0);
    translate(newLength, 0);
  }
}