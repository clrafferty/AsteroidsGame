	class Bullets extends Floater{
		public Bullets(Spaceship theship){
			myCenterX=theship.getMyCenterX();
			myCenterY=theship.getMyCenterY();
			myPointDirection = theship.getMyPointDirection();
			double dRadians=myPointDirection*(Math.PI/180);
			myDirectionX=0;
			myDirectionY=0;
		}
		public void show(){
			fill(255);
			stroke(255);
			ellipse(myCenterX,myCenterY,5,5);
		}
		public void move(){
			myCenterX += myDirectionX;    
    		myCenterY += myDirectionY;     
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
	}