void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  // Let's pick an angle 0 t
  translate(width/6,height / 2);
  float length = 350;
  fractalize(length);
} 

void fractalize(float lengthOfLine) {
  float newLength = lengthOfLine / 2;
  if(newLength > 2) {
    fractalize(newLength);
    rotate(- PI * 2 / 3);
    fractalize(newLength);
    translate(-newLength, 0);
    rotate(PI / 3);
    fractalize(newLength);
    translate(-newLength, 0);
    rotate(PI / 3);
    fractalize(newLength);
    translate(-newLength, 0);
    rotate(PI / 3);
    fractalize(newLength);
    translate(-newLength, 0);
    rotate(PI / 3);
    fractalize(newLength);
    translate(-newLength, 0);
    rotate(- PI * 2 / 3);
    translate(newLength, 0);
  } else {
    line(0, 0, newLength, 0);
    translate(newLength, 0);
    rotate(PI / 3);
    line(0, 0, newLength, 0);
    rotate(PI / 3);
    line(0, 0, newLength, 0);
    rotate(PI * 2 / 3);
    line(0, 0, newLength, 0);
    rotate(PI / 3);
    line(0, 0, newLength, 0);
    rotate(PI / 3);
    line(0, 0, newLength, 0);
    translate(newLength, 0);
  }
  if(mousePressed) {
   save("pic8.jpeg"); 
  }
}