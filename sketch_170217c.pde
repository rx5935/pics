void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  // Let's pick an angle 0 t
  translate(width/5,height *2/3 );
  float length = 400;
  fractalize(length);
  rotate(- PI * 2 / 3);
  fractalize(length);
  rotate(- PI * 2 / 3);
  fractalize(length);
} 

void fractalize(float lengthOfLine) {
  float newLength = lengthOfLine / 4;
  if(newLength > 2) {
    fractalize(newLength);
    rotate(PI/3);
    fractalize(newLength);
    rotate(- PI * 2 / 3);
    fractalize(newLength);
    fractalize(newLength);
    rotate(PI * 2 / 3);
    fractalize(newLength);
    rotate( - PI / 3);
    fractalize(newLength);
  } else {
    line(0,0,newLength, 0);
    translate(newLength, 0);
    rotate(PI / 3);
    line(0,0,newLength,0);
    translate(newLength, 0);
    rotate(- PI * 2 /3);
    line(0,0,newLength * 2,0);
    translate(newLength * 2, 0);
    rotate(PI * 2 / 3);
    line(0,0,newLength, 0);
    translate(newLength, 0);
    rotate(- PI /3);
    line(0,0,newLength,0);
    translate(newLength, 0);
  }
  if(mousePressed) {
   save("pic5.jpeg"); 
  }
}