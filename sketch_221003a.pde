int increW;
int increH;
int WCOUNT = 10;
int HCOUNT = 10;


void drawRect(int c, int x, int y, int w, int h) {
  noStroke();
  fill(c);
  rect(x, y, w, h);
}

void settings() {
  size(800, 800);
}
void setup() {
  int k=0;
  increW = width/WCOUNT;
  increH = height/HCOUNT;
  int c = 0;
  for (int x = 0; x  < width; x += increW)
  {
    for (int y = 0; y < height; y += increH)
    {
      if (k % 2 == 0)
      {
        int now_c=int(random(0, 3));
        switch(now_c){
         case 0:
          c = color(255,0,0);
          break;
         case 1:
          c = color(255,255,0);
          break;
         case 2:
          c = color(0,0,255);
          break;
        }
        println(now_c);
      }
      else 
      c = color(random(255));
      drawRect(c, x, y, increW, increH);
      delay(500);
      k++;
    }
    k++;
  }
  
}

void draw() {
  
}
