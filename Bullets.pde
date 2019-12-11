	class Bullets extends Floater{
		public Bullets(Spaceship theship){
			myCenterX=rocket.getMyCenterX();
			myCenterY=rocket.getMyCenterY();
			myPointDirection = rocket.getMyPointDirection();
			double dRadians=myPointDirection*(Math.PI/180);
		}
	}