Spaceship rocket = new Spaceship();
Star [] sky = new Star[60];
Planet [] solarsystem = new Planet[8];

public void setup() 
{
  size(1000,1000);
  background(10, 0, 60);
  for(int i = 0 ; i<sky.length ; i++)
  	sky[i]= new Star();
  for(int i=0;i<solarsystem.length;i++)
    solarsystem[i]= new Planet();
}
public void draw() 
{
  background(10, 0, 60);	
  for(int i = 0 ; i<sky.length ; i++)
  	sky[i].show();
  rocket.show();
  rocket.move();
  solarsystem[0].show(50,0,70);
  solarsystem[1].show(100,0,0);
  solarsystem[2].show(30,100,10);
  solarsystem[3].show(0,0,150);
  solarsystem[4].show(100,100,0);
  solarsystem[5].show(150,100,100);
  //solarsystem[6].show(100,100,0);
  //solarsystem[7].show(100,100,0);
if(keyPressed==false)
  rocket.setfiring(false);
}
public void keyPressed(){
 
    if(keyCode==LEFT)
		  rocket.turn(-3);
	if(keyCode==RIGHT)
		rocket.turn(3);
  if(keyCode==UP){
    rocket.accelerate(.2);
        rocket.setfiring(true);
  }
  if(keyCode==DOWN){
    rocket.accelerate(-.2);
        rocket.setfiring(true);
  }
  if(keyCode==32){
    rocket.setMyCenterX((float)(Math.random()*width));
    rocket.setMyCenterY((float)(Math.random()*height));
    rocket.setMyDirectionX(0);
    rocket.setMyDirectionY(0);
    rocket.setMyPointDirection((float)(Math.random()*360));
  }
}
