Bacteria [] hoard = new Bacteria [10];

void setup()   
{     
  //initialize bacteria variables here
  size(250, 250);
  background(0);
  for (int i = 0; i < hoard.length; i++) {
    hoard[i] = new Bacteria();
  }
}   
void draw()   
{    
  background(0);
  //move and show the bacteria
  for (int i = 0; i < hoard.length; i++) {
    hoard[i].move();
    hoard[i].show();
    if (hoard[i].op < 250)
      hoard[i].op += 2;
  }
}  
void mouseDragged() {
  for (int i = 0; i < hoard.length; i++){
    if (hoard[i].op >= 0)
      hoard[i].op -= 2;
  }
}
class Bacteria    
{     
  //lots of java!   
  int myX, myY;
  int r, g, b, op;
  int speed;
  Bacteria()
  {
    myX = (int)(Math.random()*251);
    myY = (int)(Math.random()*251);
    r = 0;
    g = 0;
    b = 0;
    op = 0;
    speed = (int)(Math.random()*5)+1;
  }
  void move()
  {
    //myX = myX + (int)(Math.random()*3)-1;
    //myY = myY + (int)(Math.random()*3)-1;
    if (myX > mouseX){ //left
      myX = myX - (int)(Math.random()*speed)-1;
    }
    else if (myX < mouseX){ //right
      myX = myX + (int)(Math.random()*speed)+1;
    }
    if (myY > mouseY){ //up
      myY = myY - (int)(Math.random()*speed)-1;
    }
    else if (myY < mouseY){ //down
      myY = myY + (int)(Math.random()*speed)+1;
    }
    /*
    if (myX == mouseX)
      myX = myX + (int)(Math.random()*6)-3;
    if (myY == mouseY)
      myY = myY + (int)(Math.random()*6)-3;
    */
    r = myX;
    g = myY;
    b = myX;
  }
  void show()
  {
    fill(r,g,b,op);
    ellipse(myX, myY, 50, 50);
  }
}
