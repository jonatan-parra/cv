int numLines = 12;
int widthLine = 16;
 
void drawLines() {
  noStroke();
  fill(#9A9A9A);
  for(int i=0; i < numLines; i++ ){
    rect(i*80+10, 0, widthLine, height);  
  }
  
  for(int i=0; i < numLines; i++ ){
    rect(0, i*80+10, width, widthLine);  
  }
  
  fill(255);
  noStroke();
  for(int j=0; j < numLines; j++){
    for(int i=0; i < numLines; i++ ){
      ellipse(i*80+18,j*80+18,widthLine+5,widthLine+5);
    }
  }
}

void setup() {
  size(600, 420);
  background(0,0,0);
  drawLines();
}

void draw() {  }
