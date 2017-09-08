int startX = 100;
int startY = 150;
int endX = 0;
int endY = 150;


void setup()
{
  size(500,300);
  strokeWeight(5);
  background(0);
  spraycan();
}
void draw()
{
  int r = (int)(Math.random()*256+120);
  int g = (int)(Math.random()*256+120);
  int b = (int)(Math.random()*256+120);
  stroke(r,g,b);
  while (endY < 300) 
  {
    endX = startX + (int)(Math.random()*9);
    endY = startY + (int)(Math.random()*20 - 10);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  
}
void mousePressed()
{
  startX = 100;
  startY = 150;
  endX = 0;
  endY = 150;
}
void spraycan()
{
  noStroke();
  fill(192,192,192);
  rect(50,170,60,110);
  rect(60,160,40,20);
  rect(72,150,15,10);
}
