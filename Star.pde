class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, myRad;
  Star() {
    myX= (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    myRad =(int)(Math.random()*20)+1;
  }
  public void show() {
    for (int i = 0; i < myRad; i++) {
      fill(255, 255, 255, 20-i);
      noStroke();
      ellipse(myX, myY, i, i);
    }
  }
}
