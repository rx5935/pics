void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  // Let's pick an angle 0 t
  translate(width/3,height / 3);
  float length = 300;
 // line(0,0,length,0);
  //translate(length,0);
  fractalize(length);
  rotate(PI * 2 / 3);
  //line(0,0,length,0);
  //translate(length,0);
  fractalize(length);
  rotate(PI * 2 / 3);
  //line(0,0,length,0);
  //translate(length,0);
  fractalize(length);
  rotate(PI * 2 / 3);
  //line(0,0,length,0);
  //translate(length,0);
  fractalize(length);
  if(mousePressed) {
   save("pic8.jpeg"); 
  }
} 

void fractalize(float lengthOfLine) {
  float newLength = lengthOfLine / 2;
  float newLength2 = lengthOfLine / 3;
  if(newLength > 1) {
    fractalize(newLength);
    rotate(- PI * 2 / 3);
    fractalize(newLength2);
    translate(-newLength2, 0);
    rotate(PI / 3);
    fractalize(newLength2);
    translate(-newLength2, 0);
    rotate(PI / 3);
    fractalize(newLength);
    translate(-newLength, 0);
    rotate(PI / 3);
    fractalize(newLength2);
    translate(-newLength2, 0);
    rotate(PI / 3);
    fractalize(newLength2);
    translate(-newLength2, 0);
    rotate(- PI * 2 / 3);
    translate(newLength, 0);
  } else {
    line(0, 0, newLength, 0);
    translate(newLength, 0);
    rotate(PI / 3);
    line(0, 0, newLength2, 0);
    rotate(PI / 3);
    line(0, 0, newLength2, 0);
    rotate(PI * 2 / 3);
    line(0, 0, newLength2, 0);
    rotate(PI / 3);
    line(0, 0, newLength2, 0);
    rotate(PI / 3);
    line(0, 0, newLength, 0);
    translate(newLength, 0);
  }
}