int lineW;
int yPos;
int step;
int cWidth;
int cHeight;

boolean reality;
void setup() {
  size(636, 250);
  yPos = 0;
  step = 1;
  cWidth = 60;
  cHeight = 60;
  reality = false;
}

void draw() {
  drawBack();
  if(reality){
    background(255);
  }
  noStroke();
  int c = #fff669;
  fill(c);
  for (int i = 100; i < 550; i = i + cWidth*2){
    rect(i, yPos, cWidth, cHeight);
    c = 0xff000000|(~c);
    fill(c);
  }
  
  
  yPos = yPos + step;
  if (yPos >= height - cHeight){
    step = -1;
  }
  if (yPos <= 0){
    step = 1;
  }
}

void drawBack(){
  background(255);
  lineW = 14;
  strokeWeight(lineW);
  stroke(0);
  for (int i = 6; i < height; i = i + 2*lineW){
    line(0, i, width, i);
  }
}

void keyPressed() {
  if (key == 'r')
    reality = !reality;
}
