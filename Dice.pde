void setup()
{
  size(800,800);
  noLoop();
}
int totalRoll = 0;
int oneRoll = 0;
int twoRoll = 0;
int threeRoll = 0;
int fourRoll = 0;
int fiveRoll = 0;
int sixRoll = 0;

void draw()
{
  
  background(0);
  for (int y = 5; y<=750; y+=25)
    {
      for(int x = 13; x<=775; x+=25)
      {
        Die one = new Die(x,y);
        one.show();
      }
    }
    fill(255);
    text("Ones Rolled= "+oneRoll,40,790);
    text("Twos Rolled= "+twoRoll,160,790);
    text("Threes Rolled= "+threeRoll,280,790);
    text("Fours Rolled= " +fourRoll,420,790);
    text("Fives Rolled= " +fiveRoll,540,790);
    text("Sixes Rolled= " +sixRoll, 660,790);
    text("Total Roll= "+totalRoll,350,770);
    
}

void mousePressed()
{

  redraw();
 
}

class Die //models one single dice cube
{
  int diceX; int diceY;  int numRoll ;int dotX; int dotY;
  Die(int x, int y) //constructor
  {
  diceX = x;
  diceY = y;
  numRoll = (int)(Math.random()*6)+1;

 

  
  
  }
  void show()
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(diceX,diceY,20,20);
    fill(255);
    if (numRoll == 1)
    {
      ellipse(diceX+10,diceY+10,5,5);
      totalRoll+=1;
      oneRoll+=1;
      
    }
    if (numRoll ==2)
    {
      ellipse(diceX+15,diceY+5,4,4);
      ellipse(diceX+5,diceY+15,4,4);
      totalRoll+=2;
      twoRoll+=1;
      
    }
    if (numRoll == 3)
    {
      ellipse(diceX+15,diceY+5,4,4);
      ellipse(diceX+5,diceY+15,4,4);
      ellipse(diceX+10,diceY+10,4,4);
      totalRoll+=3;
      threeRoll += 3;
    }
    if (numRoll == 4)
    {
      ellipse(diceX+15,diceY+5,4,4);
      ellipse(diceX+5,diceY+15,4,4);
      ellipse(diceX+5,diceY+5,4,4);
      ellipse(diceX+15,diceY+15,4,4);
      totalRoll+=4;
      fourRoll+=1;
    }
    if (numRoll == 5)
    {
      ellipse(diceX+15,diceY+5,4,4);
      ellipse(diceX+5,diceY+15,4,4);
      ellipse(diceX+5,diceY+5,4,4);
      ellipse(diceX+15,diceY+15,4,4);
      ellipse(diceX+10,diceY+10,4,4);
      totalRoll+=5;
      fiveRoll+=1;
    }
    if (numRoll == 6)
    {
      ellipse(diceX+5,diceY+4,4,4);
      ellipse(diceX+5,diceY+10,4,4);
      ellipse(diceX+5,diceY+16,4,4);
      ellipse(diceX+15,diceY+4,4,4);
      ellipse(diceX+15,diceY+10,4,4);
      ellipse(diceX+15,diceY+16,4,4);
      totalRoll+=6;
      sixRoll+=1;
    }
  }
}
