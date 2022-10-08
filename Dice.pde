Die box;
int time = 0;
int count;
void setup()
  {
      noLoop();
      size(800,800);
  }
  void draw()
  {
    for(int row = 0; row <= 600; row = row + 50){
      for(int col = 0; col <= 800; col = col + 50){
      fill((int)(Math.random()*100+155),(int)(Math.random()*100+155),(int)(Math.random()*100+155));
      rect(col,row,50,50);
      }
    }
    fill(100,150,150);
    rect(0,650,800,200);
    count = 0;
    for(int y = 0; y <= 600; y = y + 50){
      for(int x = 0; x <= 800; x = x + 50){
          
          box = new Die(x,y);
          box.roll();
          box.show();
      }
    }
    time = time + 1;
    textSize(30);
    text("Total: ",20,700);
    text(count,100,700);
      if(time > 20){
        noLoop();
        time = 0;
      }
  }
  void mousePressed()
  {
      loop();
  }
  class Die 
  {
      int myX, myY, num;
      
      Die(int x, int y)
      {
          myX = x;
          myY = y;
      }
      void roll()
      {
          num = (int)(Math.random()*6+1);
          count = count + num;
      }
      void show()
      {  
          fill(255,255,255,150);
          rect(myX,myY,50,50,15,15,15,15);
          fill(0);
          if(num == 1)
            ellipse(myX+25,myY+25,5,5);
          else if(num == 2){
            ellipse(myX+15,myY+15,5,5);
            ellipse(myX+35,myY+35,5,5);
          }
          else if(num == 3){
            ellipse(myX+38,myY+12,5,5);
            ellipse(myX+25,myY+25,5,5);
            ellipse(myX+12,myY+38,5,5);
          }
          else if(num == 4){
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX+40,myY+40,5,5);
            ellipse(myX+10,myY+40,5,5);
            ellipse(myX+40,myY+10,5,5);
          }
          else if(num == 5){
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX+40,myY+40,5,5);
            ellipse(myX+10,myY+40,5,5);
            ellipse(myX+40,myY+10,5,5);
            ellipse(myX+25,myY+25,5,5);
          }
          else if(num == 6){
            ellipse(myX+12,myY+12,5,5);
            ellipse(myX+38,myY+12,5,5);
            ellipse(myX+12,myY+25,5,5);
            ellipse(myX+38,myY+25,5,5);
            ellipse(myX+12,myY+38,5,5);
            ellipse(myX+38,myY+38,5,5);
          }
      }
  }
