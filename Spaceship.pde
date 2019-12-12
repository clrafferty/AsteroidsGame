class Spaceship extends Floater  
{   
  private boolean firing;
  Spaceship() {
    //corners = ;  //the number of corners, a triangular floater has 3   
    //xCorners;   
    //Corners;   
    myColor=color(255, 0, 0);   
    myCenterX=500;
    myCenterY=500; //holds center coordinates   
    myDirectionX = 0; 
    myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
    myPointDirection =0;
    firing=false;
  }
  public void show() {
    fill(myColor);   
    stroke(myColor);    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);
    translate(0, -20);
    rotate(PI/2);
    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    //spaceship

    fill(180);
    stroke(180);
    triangle(15, 0, -15, 0, 0, -15);
    rect(-15, -2, 30, 45, 7);
    //fire trail
    if (firing==true) {
      noStroke();
      fill(255, 0, 0, 35);
      triangle(-8, 45, -15, 65, -1, 65);
      triangle(8, 45, 1, 65, 15, 65);
      fill(255, 100, 0, 35);
      triangle(-8, 55, -15, 70, -1, 70);
      triangle(8, 55, 1, 70, 15, 70);
      fill(255, 255, 0, 35);
      triangle(-8, 65, -12, 73, -4, 73);
      triangle(8, 65, 12, 73, 4, 73);
    }
    //window
    fill(0);
    ellipse(0, 25, 15, 15);
    //draw the polygon
    /*beginShape();
     for (int nI = 0; nI < corners; nI++)
     {
     vertex(xCorners[nI], yCorners[nI]);
     }
     endShape(CLOSE);
     */
    //"unrotate" and "untranslate" in reverse order

    rotate(-1*dRadians);
    rotate(-PI/2);
    translate(0, 20);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void setMyCenterX(float myX) {
    myCenterX=myX;
  }
  public void setMyCenterY(float myY) {
    myCenterY=myY;
  }
  public void setMyDirectionX(float mydirX) {
    myDirectionX=mydirX;
  }
  public void setMyDirectionY(float mydiry) {
    myDirectionY=mydiry;
  }
  public void setMyPointDirection(float mypointdir) {
    myPointDirection=mypointdir;
  }
  public void setfiring(boolean fire) {
    firing=fire;
  }
  public float getMyCenterX() {
    return (float)myCenterX;
  }
  public float getMyCenterY() {
    return (float)myCenterY;
  }
  public float getMyDirectionY() {
    return (float)myDirectionY;
  }
   public float getMyDirectionX() {
    return (float)myDirectionX;
  }
  public float getMyPointDirection() {
   return myPointDirection;
}
