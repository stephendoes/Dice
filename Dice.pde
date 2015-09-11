void setup()
{
	size(800,800);
	noLoop();
}
void draw()
{
	
	
	for (int y = 5; y<=750; y+=25)
		{
			for(int x = 13; x<=775; x+=25)
			{
				Die one = new Die(x,y);

				one.show();
			}
		}
		
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
	numRoll = (int)(Math.random()*6);

	
	//void mousePressed()
	//{
	//	redraw();
	//}

	
	
	}
	void show()
	{
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(diceX,diceY,20,20);
		fill(255);
		if (numRoll == 1)
		{
			ellipse(diceX+10,diceY+10,5,5);
		}
		if (numRoll == 2)
		{
			ellipse(diceX+15,diceY+5,4,4);
			ellipse(diceX+5,diceY+15,4,4);
		}
		if (numRoll == 3)
		{
			ellipse(diceX+15,diceY+5,4,4);
			ellipse(diceX+5,diceY+15,4,4);
			ellipse(diceX+10,diceY+10,4,4);
		}
		if (numRoll == 4)
		{
			ellipse(diceX+15,diceY+5,4,4);
			ellipse(diceX+5,diceY+15,4,4);
			ellipse(diceX+5,diceY+5,4,4);
			ellipse(diceX+15,diceY+15,4,4);
		}
	}
}
