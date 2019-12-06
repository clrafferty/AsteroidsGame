class Asteroid extends Floater {
  private int turn;
  Asteroid() {
    turn = (int)(Math.random(-4)+2)
    corners = 5;
    xCorners=new int[5];
    xCorners={0, 5, 4, 1};   
    yCorners={2.5, 0, -2.5, -2.5, 0}; 
    myColor=color(255, 255, 255);   
    myCenterX=(int)(Math.random()*width);
    myCenterY=(int)(Math.random()*height);  
    myDirectionX=(double)(Math.random()*-2)+1;
    myDirectionY=(double)(Math.random()*-2)+1; 
    myPointDirection=(double)(Math.random()*360);
  }
  public void move(){
    super.move();
    super.turn(turn);
  }
public void show(){
    noFill();   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
}
}
