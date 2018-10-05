
Bacteria [] colony;
void setup()   
{   
  frameRate(40);
  size(630, 630);
  colony = new Bacteria [1000];  
  for (int i=0; i < colony.length; i++) {
    colony[i] = new Bacteria();
  }
}   

void draw()   
{   
  background(173, 244, 255);

  for (int i=0; i < colony.length; i++)
  {
    colony[i].show();
    colony[i].move();
    
  }
}  
class Bacteria    
{     
  int myX, myY;
  int R, G, B;
  Bacteria()
  {
    myX = myY = 315;
    R = (int)(Math.random()*255);
    G = (int)(Math.random()*50);
    B = (int)(Math.random()*50);
    
  }


  void move() {
    myY = myY + (int)(Math.random()*25)-12;
    myX = myX + (int)(Math.random()*25)-12;
  }
  void show() {
    noStroke();
    fill(R, G, B);
    ellipse(myX, myY, 15, 15);
    if (mouseX > myX)
      myX = myX + (int) (Math.random()*11)-1;
    else 
    myX = myX + (int) (Math.random()*11)-9;
     if (mouseY > myY)
      myY = myY + (int) (Math.random()*11)-1;
    else 
    myY = myY + (int) (Math.random()*11)-9;

  }
}   
void mousePressed()
{
  redraw();
  
}