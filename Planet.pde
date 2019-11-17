class Planet{
	private float myX,myY;
	Planet(){
		myX=(float)(Math.random()*800)+50;
		myY=(float)(Math.random()*800)+50;
	}
	public void show(int r, int g, int b){
			//50,0,70
			//200,180,210
			noStroke();
			fill(r,g,b);
			arc(myX,myY,90,10,PI,2*PI);
			fill(r+150,g+180,b+140);
			ellipse(myX,myY,50,50);
			fill(r,g,b);
			arc(myX,myY,90,10,0,PI);
			
		}
		
}