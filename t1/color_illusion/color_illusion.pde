float initial_size_box = 0.01;
float size_box = initial_size_box;


int size_x = 80;
int size_y = 80;
int[][] my_board = new int[size_x][size_y];
float[][]positions_x = new float[size_x][size_y];
float[][]positions_y = new float[size_x][size_y];

int[][] my_rects = new int[size_x][size_y];


int[]positions_purple_x = new int[size_x];
int[]positions_purple_y = new int[size_x];


void calculate_location(){
  for (int r=0; r<size_x; r++ ){ // rows
    for (int c=0; c<size_y; c++ ){ // cols
     positions_x[r][c] = c*size_box*width;
     positions_y[r][c] = r*size_box*height;
    }
  }  
}

void setup (){
  size(500,500);
  fill(0);
  noStroke();
  size_box = initial_size_box * 2;
  calculate_location();
  draw_board_purple();
}

void draw_board(){
  calculate_location();
  background(255); // clear background with white
  for (int x=0; x<size_x; x++) {
    for (int y=0; y<size_y; y++) {
      if( (x+y)%2 != 0){
        rect_3(positions_x[x][y],positions_y[x][y]); 
      } else {
        rect_1(positions_x[x][y],positions_y[x][y]); 
      }
     }
   }
}



void draw(){ 
  if (key == '1' || key == '2' || key == '3'  || key == '4' || key == '5'  || key == '6' || key == '7'){
    println(int(key));
    size_box = initial_size_box * (int(key)-48);
    draw_board_purple();
  }
    
  if (key == '0'){
    println(int(key));
    size_box = initial_size_box * 2;
    draw_board();
  }
}

void draw_board_purple(){
  // Row 0
  draw_board();
  
  rect_2(positions_x[0][2],positions_y[0][0]);
  rect_2(positions_x[0][4],positions_y[0][0]);

  // Row 1
  rect_2(positions_x[0][1],positions_y[1][0]);
  rect_2(positions_x[0][3],positions_y[1][0]);
  rect_2(positions_x[0][5],positions_y[1][0]);
  rect_2(positions_x[0][7],positions_y[1][0]);
  rect_2(positions_x[0][9],positions_y[1][0]);
  
  rect_2(positions_x[0][47],positions_y[1][0]);
  rect_2(positions_x[0][49],positions_y[1][0]);
  
  // Row 2
  rect_2(positions_x[0][2],positions_y[2][0]);
  rect_2(positions_x[0][4],positions_y[2][0]);
  rect_2(positions_x[0][6],positions_y[2][0]);
  rect_2(positions_x[0][8],positions_y[2][0]);
  rect_2(positions_x[0][10],positions_y[2][0]);
  
  rect_2(positions_x[0][46],positions_y[2][0]);
  rect_2(positions_x[0][48],positions_y[2][0]);
  
  // Row 3
  rect_2(positions_x[0][5],positions_y[3][0]);
  rect_2(positions_x[0][7],positions_y[3][0]);
  rect_2(positions_x[0][9],positions_y[3][0]);
  rect_2(positions_x[0][11],positions_y[3][0]);
  
  rect_2(positions_x[0][43],positions_y[3][0]);
  rect_2(positions_x[0][45],positions_y[3][0]);
  rect_2(positions_x[0][47],positions_y[3][0]);
  
  // Row 4
  rect_2(positions_x[0][15],positions_y[4][0]);
  rect_2(positions_x[0][13],positions_y[4][0]);
  
  rect_2(positions_x[0][42],positions_y[4][0]);
  rect_2(positions_x[0][44],positions_y[4][0]);
  rect_2(positions_x[0][46],positions_y[4][0]);
  
  
  // Row 5
  rect_2(positions_x[0][12],positions_y[5][0]);
  rect_2(positions_x[0][14],positions_y[5][0]);
  rect_2(positions_x[0][16],positions_y[5][0]);
  
  rect_2(positions_x[0][41],positions_y[5][0]);
  rect_2(positions_x[0][43],positions_y[5][0]);

  // Row 6
  rect_2(positions_x[0][15],positions_y[6][0]);
  rect_2(positions_x[0][17],positions_y[6][0]);
  
  rect_2(positions_x[0][40],positions_y[6][0]);
  rect_2(positions_x[0][42],positions_y[6][0]);
  
  // Row 7
  rect_2(positions_x[0][16],positions_y[7][0]);  
  
  rect_2(positions_x[0][37],positions_y[7][0]);  
  rect_2(positions_x[0][39],positions_y[7][0]);  
  rect_2(positions_x[0][41],positions_y[7][0]);  
  
  // Row 8
  rect_2(positions_x[0][15],positions_y[8][0]);
  rect_2(positions_x[0][17],positions_y[8][0]);
  
  rect_2(positions_x[0][36],positions_y[8][0]);
  rect_2(positions_x[0][38],positions_y[8][0]);
  
  // Row 9
  rect_2(positions_x[0][16],positions_y[9][0]);    
  rect_2(positions_x[0][18],positions_y[9][0]);    
  rect_2(positions_x[0][20],positions_y[9][0]);    
  
  rect_2(positions_x[0][37],positions_y[9][0]);    
  
  // Row 10
  rect_2(positions_x[0][17],positions_y[10][0]);
  rect_2(positions_x[0][19],positions_y[10][0]);  
  
  rect_2(positions_x[0][36],positions_y[10][0]);
  rect_2(positions_x[0][38],positions_y[10][0]);
 
  // Row 11
  rect_2(positions_x[0][18],positions_y[11][0]);
  rect_2(positions_x[0][20],positions_y[11][0]);  
  
  rect_2(positions_x[0][35],positions_y[11][0]);  
  rect_2(positions_x[0][37],positions_y[11][0]);  
  
  // Row 12
  rect_2(positions_x[0][19],positions_y[12][0]);
  rect_2(positions_x[0][21],positions_y[12][0]); 
  
  rect_2(positions_x[0][34],positions_y[12][0]); 
  
  // Row 13
  rect_2(positions_x[0][20],positions_y[13][0]);
  rect_2(positions_x[0][22],positions_y[13][0]); 
  rect_2(positions_x[0][24],positions_y[13][0]);
  rect_2(positions_x[0][26],positions_y[13][0]); 
  
  rect_2(positions_x[0][31],positions_y[13][0]); 
  rect_2(positions_x[0][33],positions_y[13][0]); 
  rect_2(positions_x[0][35],positions_y[13][0]); 
  
  // Row 14
  rect_2(positions_x[0][21],positions_y[14][0]);
  rect_2(positions_x[0][23],positions_y[14][0]); 
  rect_2(positions_x[0][25],positions_y[14][0]);
  rect_2(positions_x[0][27],positions_y[14][0]); 
  
  rect_2(positions_x[0][30],positions_y[14][0]); 
  rect_2(positions_x[0][32],positions_y[14][0]); 
  rect_2(positions_x[0][34],positions_y[14][0]); 
  
  // Row 15
  rect_2(positions_x[0][24],positions_y[15][0]);
  rect_2(positions_x[0][26],positions_y[15][0]);
  rect_2(positions_x[0][28],positions_y[15][0]); 
  
  rect_2(positions_x[0][31],positions_y[15][0]); 

  // Row 16
  rect_2(positions_x[0][27],positions_y[16][0]);
  rect_2(positions_x[0][29],positions_y[16][0]); 
  
  // Row 17
  rect_2(positions_x[0][28],positions_y[17][0]);  /// Centro de un solo cuadro
  
  // Row 18
  rect_2(positions_x[0][24],positions_y[18][0]);
  rect_2(positions_x[0][26],positions_y[18][0]);
  rect_2(positions_x[0][29],positions_y[18][0]);
  
  // Row 19
  rect_2(positions_x[0][25],positions_y[19][0]);
  
  rect_2(positions_x[0][28],positions_y[19][0]);
  rect_2(positions_x[0][30],positions_y[19][0]);
  
  // Row 20
  rect_2(positions_x[0][24],positions_y[20][0]);
  
  rect_2(positions_x[0][29],positions_y[20][0]);
  rect_2(positions_x[0][31],positions_y[20][0]);
  
  // Row 21
  rect_2(positions_x[0][23],positions_y[21][0]);
  rect_2(positions_x[0][25],positions_y[21][0]);
  
  rect_2(positions_x[0][30],positions_y[21][0]);
  rect_2(positions_x[0][32],positions_y[21][0]);
    
  // Row 22
  rect_2(positions_x[0][22],positions_y[22][0]);
   
  rect_2(positions_x[0][31],positions_y[22][0]);
  rect_2(positions_x[0][33],positions_y[22][0]);  
  
  // Row 23
  rect_2(positions_x[0][21],positions_y[23][0]);
  rect_2(positions_x[0][23],positions_y[23][0]);
   
  rect_2(positions_x[0][32],positions_y[23][0]);
  rect_2(positions_x[0][34],positions_y[23][0]);  
  
  // Row 24
  rect_2(positions_x[0][20],positions_y[24][0]);
  rect_2(positions_x[0][22],positions_y[24][0]);
  rect_2(positions_x[0][24],positions_y[24][0]);
   
  rect_2(positions_x[0][33],positions_y[24][0]);
  rect_2(positions_x[0][35],positions_y[24][0]);   
  
  // Row 25
  rect_2(positions_x[0][19],positions_y[25][0]);
  rect_2(positions_x[0][21],positions_y[25][0]);
  rect_2(positions_x[0][23],positions_y[25][0]);
   
  rect_2(positions_x[0][34],positions_y[25][0]);

  // Row 26
  rect_2(positions_x[0][18],positions_y[26][0]);
  rect_2(positions_x[0][20],positions_y[26][0]);

  rect_2(positions_x[0][35],positions_y[26][0]);
  rect_2(positions_x[0][37],positions_y[26][0]);
 
  // Row 27
  rect_2(positions_x[0][17],positions_y[27][0]);

  rect_2(positions_x[0][36],positions_y[27][0]);
  rect_2(positions_x[0][38],positions_y[27][0]);  
  
  // Row 28
  rect_2(positions_x[0][16],positions_y[28][0]);

  rect_2(positions_x[0][37],positions_y[28][0]);
  rect_2(positions_x[0][39],positions_y[28][0]);  
  
  // Row 29
  rect_2(positions_x[0][15],positions_y[29][0]);
  rect_2(positions_x[0][17],positions_y[29][0]);

  rect_2(positions_x[0][38],positions_y[29][0]);
  
  // Row 30
  rect_2(positions_x[0][14],positions_y[30][0]);
  rect_2(positions_x[0][16],positions_y[30][0]);

  rect_2(positions_x[0][39],positions_y[30][0]); 
  
  // Row 31
  rect_2(positions_x[0][13],positions_y[31][0]);

  rect_2(positions_x[0][38],positions_y[31][0]);
  rect_2(positions_x[0][40],positions_y[31][0]);
  
  // Row 32
  rect_2(positions_x[0][14],positions_y[32][0]);

  rect_2(positions_x[0][39],positions_y[32][0]);
  rect_2(positions_x[0][41],positions_y[32][0]);
  
  // Row 33
  rect_2(positions_x[0][13],positions_y[33][0]);

  rect_2(positions_x[0][40],positions_y[33][0]);

  // Row 34
  rect_2(positions_x[0][12],positions_y[34][0]);

  rect_2(positions_x[0][39],positions_y[34][0]);
  rect_2(positions_x[0][41],positions_y[34][0]);
  
  // Row 35
  rect_2(positions_x[0][13],positions_y[35][0]);

  rect_2(positions_x[0][40],positions_y[35][0]);
  rect_2(positions_x[0][42],positions_y[35][0]);  
  
  // Row 36
  rect_2(positions_x[0][12],positions_y[36][0]);

  rect_2(positions_x[0][41],positions_y[36][0]);
  rect_2(positions_x[0][43],positions_y[36][0]);
  rect_2(positions_x[0][45],positions_y[36][0]);
  rect_2(positions_x[0][47],positions_y[36][0]);
  
  // Row 37
  rect_2(positions_x[0][11],positions_y[37][0]);
  rect_2(positions_x[0][13],positions_y[37][0]);

  rect_2(positions_x[0][42],positions_y[37][0]);
  rect_2(positions_x[0][44],positions_y[37][0]);
  rect_2(positions_x[0][46],positions_y[37][0]);
    
  // Row 38
  rect_2(positions_x[0][8],positions_y[38][0]);
  rect_2(positions_x[0][10],positions_y[38][0]);
  rect_2(positions_x[0][12],positions_y[38][0]);

  rect_2(positions_x[0][41],positions_y[38][0]);
  rect_2(positions_x[0][45],positions_y[38][0]);
  rect_2(positions_x[0][47],positions_y[38][0]);
      
  // Row 39
  rect_2(positions_x[0][5],positions_y[39][0]);
  rect_2(positions_x[0][7],positions_y[39][0]);
  rect_2(positions_x[0][9],positions_y[39][0]);
  rect_2(positions_x[0][11],positions_y[39][0]);

  rect_2(positions_x[0][46],positions_y[39][0]);
  rect_2(positions_x[0][48],positions_y[39][0]);
     
  // Row 40
  rect_2(positions_x[0][4],positions_y[40][0]);
  rect_2(positions_x[0][6],positions_y[40][0]);
  rect_2(positions_x[0][8],positions_y[40][0]);
  rect_2(positions_x[0][10],positions_y[40][0]);

  rect_2(positions_x[0][47],positions_y[40][0]);
  rect_2(positions_x[0][49],positions_y[40][0]);
  rect_2(positions_x[0][51],positions_y[40][0]);
    
  // Row 41
  rect_2(positions_x[0][3],positions_y[41][0]);
  rect_2(positions_x[0][5],positions_y[41][0]);
  rect_2(positions_x[0][7],positions_y[41][0]);
 
  rect_2(positions_x[0][48],positions_y[41][0]);
  rect_2(positions_x[0][50],positions_y[41][0]); 
  
}


void rect_1 (float r, float c){  // Only white
  fill(255);
  rect(r, c, width*size_box,height*size_box); 
}

void rect_2 (float r, float c){ // Only purple
  fill(231, 36, 112);
  rect(r, c, width*size_box,height*size_box); 
}

void rect_3 (float r, float c){ // Only green
  fill(24, 239, 74);
  rect(r, c, width*size_box,height*size_box); 
}
