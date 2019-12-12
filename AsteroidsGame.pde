Spaceship rocket = new Spaceship();
Star [] sky = new Star[60];
Planet [] solarsystem = new Planet[8];
int astnum=5;
ArrayList <Asteroid> Stroids = new ArrayList <Asteroid>();
ArrayList <Bullets> bull = new ArrayList <Bullets>();

public void setup() 
{
  size(1000, 1000);
  background(10, 0, 60);
  for (int i = 0; i<sky.length; i++)
    sky[i]= new Star();
  for (int i=0; i<solarsystem.length; i++)
    solarsystem[i]= new Planet();
  for (int i = 0; i <astnum; i++)
    Stroids.add(new Asteroid());
}
public void draw() 
{
  background(10, 0, 60);	
  if (astnum==0) {
    astnum*=2;
    stroke(255);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text("level passed", width/2, height/2);
    for (int i = 0; i <astnum; i++)
      Stroids.add(new Asteroid());
  }
  for (int i = 0; i<sky.length; i++)
    sky[i].show();
  rocket.show();
  rocket.move();
  solarsystem[0].show(50, 0, 70);
  solarsystem[1].show(100, 0, 0);
  solarsystem[2].show(30, 100, 10);
  solarsystem[3].show(0, 0, 150);
  solarsystem[4].show(100, 100, 0);
  solarsystem[5].show(150, 100, 100);
  //solarsystem[6].show(100,100,0);
  //solarsystem[7].show(100,100,0);
  for (int i = 0; i <Stroids.size(); i++) {
    Stroids.get(i).show();
    Stroids.get(i).move();
  }
  if (keyPressed==false)
    rocket.setfiring(false);
  for (int i = 0; i < Stroids.size(); i++) {
    if (dist(rocket.getMyCenterX(), rocket.getMyCenterY(), Stroids.get(i).getMyCenterX(), Stroids.get(i).getMyCenterY())<30) {
      Stroids.remove(i);
    }
  }
  for (int i = 0; i<bull.size(); i++) {
    bull.get(i).show();
    bull.get(i).move();
    for (int m = 0; m<Stroids.size(); m++) {
      if (dist(Stroids.get(m).getMyCenterX(), Stroids.get(m).getMyCenterY(), bull.get(i).getMyCenterX(), bull.get(i).getMyCenterY())<20) {
        Stroids.remove(m);
        break;
      }
    }
  }
}
public void keyPressed() {

  if (keyCode==LEFT)
    rocket.turn(-3);
  rocket.accelerate(0);
  if (keyCode==RIGHT)
    rocket.turn(3);
  rocket.accelerate(0);
  if (keyCode==UP) {
    rocket.accelerate(.2);
    rocket.setfiring(true);
  }
  if (keyCode==DOWN) {
    bull.add(new Bullets(rocket));
  }
  if (keyCode==32) {
    rocket.setMyCenterX((float)(Math.random()*width));
    rocket.setMyCenterY((float)(Math.random()*height));
    rocket.setMyDirectionX(0);
    rocket.setMyDirectionY(0);
    rocket.setMyPointDirection((float)(Math.random()*360));
  }
}
