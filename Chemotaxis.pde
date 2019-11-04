 //declare bacteria variables here   
Bacteria[] jeff;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(1000, 1000); 
 	jeff = new Bacteria[1000];
 	for(int i = 0; i < jeff.length; i++){
 		jeff[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);  
			for(int i = 0; i < jeff.length; i++){
				jeff[i].move();
				jeff[i].show();
			}   
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myC;
 	Bacteria(){
 		myX = 500;
 		myY = 500;
 	}
 		void show(){
 			
 			fill((int)(Math.random() * 254),(int)(Math.random() * 254),(int)(Math.random() * 254));
 			//a = (int)(Math.random() * 100);
 			//b = (int)(Math.random() * 100);
 			ellipse(myX, myY, 10, 10);
			}

		void move(){
			myY += (int)(Math.random() * 5) - 2;
			myX += (int)(Math.random() * 5) - 2;
		}	
 }    