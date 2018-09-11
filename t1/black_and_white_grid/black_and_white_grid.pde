  /*
  1  2
  3  4  
  */
boolean[][] rects; // twodimensional array, think rows and columns
boolean flag_click = false;

float size_box = 0.08;
float size_box_1 = 0.02;
int distance_box_1 = 9;
float margin = 3;
int fill_black = 0;
int fill_white = 255;
int[][]my_rects_effect = { {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 6, 7, 4, 1, 2, 1, 2},
                    {1, 2, 5, 6, 5, 8, 3, 4, 3, 2, 1},
                    {2, 1, 6, 5, 6, 7, 4, 3, 4, 1, 2},
                    {1, 6, 5, 6, 5, 8, 3, 4, 3, 4, 1},
                    {2, 9, 10, 9, 10,  1, 12, 11, 12, 11, 2},
                    {1, 4, 3,  4,  3, 14, 5, 6, 5, 6, 1},
                    {2, 1, 4,  3,  4, 13, 6, 5, 6, 1, 2},
                    {1, 2, 3,  4,  3, 14, 5, 6, 5, 2, 1},
                    {2, 1, 2,  1,  4, 13, 6, 1, 2, 1, 2},
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                  };
                  
int[][]my_rects_normal = { 
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2},
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2},
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2},
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2},
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2},
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                  };
                  
int[][] my_rects = new int[my_rects_effect.length][my_rects_effect.length];
float[][]positions_x = new float[my_rects.length][my_rects.length];
float[][]positions_y = new float[my_rects.length][my_rects.length];

void setup (){
  
  size(500,500);
  fill(0);
  noStroke();
  change_rects(my_rects_normal);
  
  
  for (int r=0; r<=my_rects.length-1; r++ ){ // rows
    for (int c=0; c<=my_rects.length-1; c++ ){ // cols
     positions_x[r][c] = c*size_box*width;
     positions_y[r][c] = r*size_box*height;
    }
  }  
  
  draw_chess();

}

void draw_chess(){
  background(255); // clear background with white
  for (int x=0; x<my_rects.length; x++) {
    for (int y=0; y<my_rects.length; y++) {
      if(my_rects[x][y] == 1){
        rect_1(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 2){
        rect_2(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 3){
        rect_3(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 4){
        rect_4(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 5){
        rect_5(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 6){
        rect_6(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 7){
        rect_7(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 8){
        rect_8(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 9){
        rect_9(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 10){
        rect_10(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 11){
        rect_11(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 12){
        rect_12(positions_x[x][y],positions_y[x][y]);  
      }
        
      if(my_rects[x][y] == 13){
        rect_13(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 14){
        rect_14(positions_x[x][y],positions_y[x][y]);  
      }

    }
  }
}

void draw(){
  if (flag_click){
    change_rects(my_rects_effect);  
  } else{
    change_rects(my_rects_normal);  
  }
  draw_chess();
 // background(255); // clear background with white
}

void mouseClicked(){
  flag_click = !flag_click;
  println("Click");
}

void change_rects(int[][]x){
  for (int i = 0; i < my_rects.length; i++) {
    for (int j = 0; j < my_rects.length; j++) {
      my_rects[i][j] = x[i][j];
    }
  }
}


void rect_1 (float r, float c){  // Only black
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
}

void rect_2 (float r, float c){ // Only white
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
}


void rect_3 (float r, float c){ // Black with white in 1 and 4
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_white);
  rect(r+margin, c+margin, width*size_box_1,height*size_box_1); 
  rect(r+margin *distance_box_1, c+margin*distance_box_1, width*size_box_1 ,height*size_box_1); 
}


void rect_4 (float r, float c){ // White with black in 1 and 4
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_black);
  
  rect(r+margin, c+margin, width*size_box_1,height*size_box_1);
  rect(r+margin *distance_box_1, c+margin*distance_box_1, width*size_box_1 ,height*size_box_1); 
}

void rect_5 (float r, float c){ // Black with black in 2 and 3
  
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_white);
  
  rect(r+margin, c+margin*distance_box_1, width*size_box_1,height*size_box_1);
  rect(r+margin*distance_box_1, c+margin, width*size_box_1 ,height*size_box_1); 
}


void rect_6 (float r, float c){ // White with black in 2 and 3
  stroke(3);
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_black);
  stroke(3);
  rect(r+margin, c+margin*distance_box_1, width*size_box_1,height*size_box_1); // Down
  rect(r+margin*distance_box_1, c+margin, width*size_box_1 ,height*size_box_1); // Up
}

void rect_7 (float r, float c){ // Black with white in 4 and 3
  stroke(3);
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_white);
  stroke(3);
  rect(r+margin, c+margin*distance_box_1, width*size_box_1,height*size_box_1);
  rect(r+margin*distance_box_1, c+margin*distance_box_1, width*size_box_1 ,height*size_box_1); 
}

void rect_8 (float r, float c){ // White with black in 4 and 3
  stroke(3);
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_black);
  stroke(3);
  rect(r+margin, c+margin*distance_box_1, width*size_box_1,height*size_box_1);
  rect(r+margin*distance_box_1, c+margin*distance_box_1, width*size_box_1 ,height*size_box_1); 
}

void rect_9 (float r, float c){ // Black with white in 4 and 2
  stroke(3);
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_white);
  stroke(3);
  rect(r+margin*distance_box_1, c+margin, width*size_box_1,height*size_box_1);
  rect(r+margin*distance_box_1, c+margin*distance_box_1, width*size_box_1 ,height*size_box_1); 
}

void rect_10 (float r, float c){ // Black with white in 4 and 2
  stroke(3);
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_black);
  stroke(3);
  rect(r+margin*distance_box_1, c+margin, width*size_box_1,height*size_box_1);
  rect(r+margin*distance_box_1, c+margin*distance_box_1, width*size_box_1 ,height*size_box_1); 
}

void rect_11 (float r, float c){ // Black with white in 1 and 3
  stroke(3);
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_white);
  stroke(3);
  rect(r+margin, c+margin*distance_box_1, width*size_box_1,height*size_box_1);
  rect(r+margin, c+margin, width*size_box_1 ,height*size_box_1); 
}

void rect_12 (float r, float c){ // White with white in 1 and 3
  stroke(3);
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_black);
  stroke(3);
  rect(r+margin, c+margin*distance_box_1, width*size_box_1,height*size_box_1);
  rect(r+margin, c+margin, width*size_box_1 ,height*size_box_1); 
}

void rect_13 (float r, float c){ // White with white in 1 and 2
  stroke(3);
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_white);
  stroke(3);
  rect(r+margin, c+margin, width*size_box_1,height*size_box_1); // Left
  rect(r+margin*distance_box_1, c+margin, width*size_box_1 ,height*size_box_1); // Right
}

void rect_14 (float r, float c){ // White with white in 1 and 2
  stroke(3);
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_black);
  stroke(3);
  rect(r+margin, c+margin, width*size_box_1,height*size_box_1); // Left
  rect(r+margin*distance_box_1, c+margin, width*size_box_1 ,height*size_box_1); // Right
}
