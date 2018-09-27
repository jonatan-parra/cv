import frames.timing.*;
import frames.primitives.*;
import frames.core.*;
import frames.processing.*;

// 1. Frames' objects
Scene scene;
Frame frame;
Vector v1, v2, v3;
// timing
TimingTask spinningTask;
boolean yDirection;
// scaling is a power of 2
int n = 4;

// 2. Hints
boolean triangleHint = true;
boolean gridHint = true;
boolean debug = false;
boolean aa = false;

// 3. Use FX2D, JAVA2D, P2D or P3D
String renderer = P3D;

void setup() {
  //use 2^n to change the dimensions
  size(1024, 1024, renderer);
  scene = new Scene(this);
  if (scene.is3D())
    scene.setType(Scene.Type.ORTHOGRAPHIC);
  scene.setRadius(width/2);
  scene.fitBallInterpolation();

  // not really needed here but create a spinning task
  // just to illustrate some frames.timing features. For
  // example, to see how 3D spinning from the horizon
  // (no bias from above nor from below) induces movement
  // on the frame instance (the one used to represent
  // onscreen pixels): upwards or backwards (or to the left
  // vs to the right)?
  // Press ' ' to play it
  // Press 'y' to change the spinning axes defined in the
  // world system.
  spinningTask = new TimingTask() {
    @Override
    public void execute() {
      scene.eye().orbit(scene.is2D() ? new Vector(0, 0, 1) :
        yDirection ? new Vector(0, 1, 0) : new Vector(1, 0, 0), PI / 100);
    }
  };
  scene.registerTask(spinningTask);

  frame = new Frame();
  frame.setScaling(width/pow(2, n));

  // init the triangle that's gonna be rasterized
  randomizeTriangle();
}

void draw() {
  background(0);
  stroke(0, 255, 0);
  if (gridHint)
    scene.drawGrid(scene.radius(), (int)pow(2, n));
  if (triangleHint)
    drawTriangleHint();
  pushMatrix();
  pushStyle();
  scene.applyTransformation(frame);
  triangleRaster();
  popStyle();
  popMatrix();
}

float edgeFunc(Vector a, Vector b, Vector c){
  return (c.x() - a.x()) * (b.y() - a.y()) - (c.y() - a.y()) * (b.x() - a.x()); 
}

boolean edgeFuncBool(Vector a, Vector b, Vector c, Vector p){
    float w1 = edgeFunc(b, c, p); 
    float w2 = edgeFunc(c, a, p); 
    float w3 = edgeFunc(a, b, p); 
    return (w1 >= 0 && w2 >= 0 && w3 >= 0);
}
// Implement this function to rasterize the triangle.
// Coordinates are given in the frame system which has a dimension of 2^n
void triangleRaster() {
  Vector p = new Vector(0,0);
  Vector rst_v1 = frame.location(v1);
  Vector rst_v2 = frame.location(v2);
  Vector rst_v3 = frame.location(v3);
  //Colores de los vertices definidos
  color cv1 = color(255, 0, 0);
  color cv2 = color(0, 255, 0);
  color cv3 = color(0, 0, 255);
  //---------------------------------------
  float area = edgeFunc(rst_v1, rst_v2, rst_v3); 
  if (area < 0){
    rst_v2 = frame.location(v3);
    rst_v3 = frame.location(v2);
    area = edgeFunc(rst_v1, rst_v2, rst_v3);
  }
  int size = round(pow(2, n)/2);
  for (float y = -size; y <= size; y++){
    for (float x = -size; x <= size; x++){
      p.set(x,y);
      boolean inside = true;
      boolean outside = false;
      boolean tmp;
      if(aa){
        tmp = edgeFuncBool(rst_v1, rst_v2, rst_v3, p);
        inside &= tmp;
        outside |= tmp;
        p.set(x,y+0.875);
        tmp = edgeFuncBool(rst_v1, rst_v2, rst_v3, p);
        inside &= tmp;
        outside |= tmp;
        p.set(x+0.875,y);
        tmp = edgeFuncBool(rst_v1, rst_v2, rst_v3, p);
        inside &= tmp;
        outside |= tmp;
        p.set(x+0.875,y+0.875);
        tmp = edgeFuncBool(rst_v1, rst_v2, rst_v3, p);
        p.set(x,y);
        inside &= tmp;
        outside |= tmp;
        color c = color(0,255,0);
        if(outside){
          c = color(125);
        }
        if(inside){
          c = color(255);
        }
        
        pushStyle();
        stroke(c);
        point(p.x(), p.y());
        popStyle();
        p.set(x,y);
      }
      float w1 = edgeFunc(rst_v2, rst_v3, p); 
      float w2 = edgeFunc(rst_v3, rst_v1, p); 
      float w3 = edgeFunc(rst_v1, rst_v2, p);  
      if ((w1 >= 0 && w2 >= 0 && w3 >= 0) && !aa) {            
                w1 /= area; 
                w2 /= area; 
                w3 /= area; 
                float r = w1 * red(cv1) + w2 * red(cv2) + w3 * red(cv3);
                float g = w1 * green(cv1) + w2 * green(cv2) + w3 * green(cv3);
                float b = w1 * blue(cv1) + w2 * blue(cv2) + w3 * blue(cv3);
                color c = color(r, g, b);
                pushStyle();
                stroke(c);
                point(p.x(), p.y());
                popStyle();
      }
    }
  }
  // frame.location converts points from world to frame
  // here we convert v1 to illustrate the idea
  if (debug) {
    pushStyle();
    stroke(255, 255, 0, 125);
    point(round(frame.location(v1).x()), round(frame.location(v1).y()));
    popStyle();
  }
}

void randomizeTriangle() {
  int low = -width/2;
  int high = width/2;
  v1 = new Vector(random(low, high), random(low, high));
  v2 = new Vector(random(low, high), random(low, high));
  v3 = new Vector(random(low, high), random(low, high));
}

void drawTriangleHint() {
  pushStyle();
  noFill();
  strokeWeight(2);
  stroke(255, 0, 0);
  triangle(v1.x(), v1.y(), v2.x(), v2.y(), v3.x(), v3.y());
  strokeWeight(5);
  stroke(0, 255, 255);
  point(v1.x(), v1.y());
  point(v2.x(), v2.y());
  point(v3.x(), v3.y());
  popStyle();
}

void keyPressed() {
  if (key == 'a')
    aa = !aa;
  if (key == 'g')
    gridHint = !gridHint;
  if (key == 't')
    triangleHint = !triangleHint;
  if (key == 'd')
    debug = !debug;
  if (key == '+') {
    n = n < 7 ? n+1 : 2;
    frame.setScaling(width/pow( 2, n));
  }
  if (key == '-') {
    n = n >2 ? n-1 : 7;
    frame.setScaling(width/pow( 2, n));
  }
  if (key == 'r')
    randomizeTriangle();
  if (key == ' ')
    if (spinningTask.isActive())
      spinningTask.stop();
    else
      spinningTask.run(20);
  if (key == 'y')
    yDirection = !yDirection;
}