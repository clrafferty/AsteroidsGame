Spaceship rocket = new Spaceship();
Star [] sky = new Star[60];
Planet purple = new Planet();
Planet earth = new Planet();
public void setup() 
{
  size(1000,1000);
  background(10, 0, 60);
  for(int i = 0 ; i<sky.length ; i++)
  	sky[i]= new Star();
}
public void draw() 
{
  background(10, 0, 60);	
  for(int i = 0 ; i<sky.length ; i++)
  	sky[i].show();
  rocket.show();
  rocket.move();
  purple.show("purple");
  earth.show("earth");
  
}
public void keyPressed(){
	/*
	if (left_arrow==keyCode)
		rocket.turn(-1);
	if(right_ARROW==keyCode)
		rocket.turn(1);
	if(UParrow==keyCode)
		rocket.
	*/
}
