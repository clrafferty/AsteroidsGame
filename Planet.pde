class Planet{
	private int myX,myY;
	Planet(){
		myX=300;
		myY=300;
	}
	public void show(String pname){
		if(pname=="purple"){
			noStroke();
			fill(50,0,70);
			arc(myX,myY,90,10,PI,2*PI);
			fill(200,180,210);
			ellipse(myX,myY,50,50);
			fill(50,0,70);
			arc(myX,myY,90,10,0,PI);
			
		}
		if(pname == "earth"){
			myX=500;
			myY=200;
			fill(0,150,255);
			ellipse(myX,myY,60,60);
			fill(0,255,100);
			beginShape();
     		 vertex(myX-10, myY-15);
     		 vertex(myX-5, myY+10);
     		 vertex(myX, myY);
     		 vertex(myX+8, myY-5);
     		 vertex(myX-4, myY+4);
     		 vertex(myX+9, myY+2);
     		 vertex(myX-20, myY+7);
     		 vertex(myX+15, myY+15);
     		 vertex(myX, myY-22);
     		 vertex(myX-17, myY+3);
     		 vertex(myX-5, myY+10);
     		 vertex(myX, myY);
   			 endShape(CLOSE);
					}
	}
}