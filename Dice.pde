void setup()
{
	size(800,800);
	noLoop();
}
void draw()
{
	
	
	for (int y = 5; y<=800; y+=25)
		{
			for(int x = 5; x<=800; x+=25)
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
	
	}
}
