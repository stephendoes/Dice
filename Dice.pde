void setup()
{
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int diceX; int diceY; int numRoll 
	Die(int x, int y) //constructor
	{
	diceX = x;
	diceY = y;
	numRoll = dots; 
	}
	void roll()
	{
		if (mousePressed)
		{
			dots = (int)(Math.random()*6);
		}
	}
	void show()
	{
		rect(x,y,10,10);
		
	}
}
