int spacing;
int lineWidth;
void setup() {
  size(700, 500);
  background(255);
  spacing = 50;
}

void draw(){
  strokeWeight(5);
  stroke(126);
  int s = 0;
  int dig = 0;
  for (int i = 0; i < 14; i = i+1){
    lineAngle(dig,0,radians(-45), 1000);
    lineAngle(0,dig,radians(-45), 1000);
    lineAngle(dig,0,radians(225), 1000);
    line(s,0,s, height);
    line(0,s,width,s);
    s = s + spacing;
    dig = dig + 100;
  }
  strokeWeight(2);
  stroke(255);
  fill(0);
  for (int i = 50; i <= 450; i = i + 200){
    for (int j = 50; j <= 650; j = j + 200){
     ellipse(j, i, 15, 15); 
    }
  }
}

void lineAngle(int x, int y, float angle, float length)
{
  line(x, y, x+cos(angle)*length, y-sin(angle)*length);
}
