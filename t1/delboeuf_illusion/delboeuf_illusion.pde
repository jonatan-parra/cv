int circSize;
int smallSize;
int bigSize;
boolean alt;
boolean reality;
void setup() {
  size(400, 300);
  circSize = 50;
  smallSize = 65;
  bigSize = 190;
  alt = false;
  reality = false;
  strokeWeight(2);
}

void draw() {
  background(255);
  fill(0,0,255);
  noStroke();
  ellipse(100, 150, circSize, circSize);
  ellipse(300, 150, circSize, circSize);
  noFill();
  stroke(1);
  if(reality)
    return;
  if(alt){
    ellipse(100, 150, smallSize, smallSize);
    ellipse(300, 150, bigSize, bigSize);
  }else{
    ellipse(100, 150, bigSize, bigSize);
    ellipse(300, 150, smallSize, smallSize);
  }
}

void keyPressed() {
  if (key == 'r')
    reality = !reality;
  if (key == 'a')
    alt = !alt;
}
