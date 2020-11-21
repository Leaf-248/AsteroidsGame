Spaceship bob= new Spaceship();
Star[] stars = new Star[200];

public void setup() {
 
  size(400, 400);
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
}

public void draw() {
  background(0);
  
  bob.move();
  bob.show();
  for(int i = 0; i<200; i++){
    stars[i].show();
  }
}

public void keyPressed(){

  if (key == 'a') { //turn left
    bob.turn(-10);
  }
  if (key == 'd') { //turn right
    bob.turn(10);
  }
  if (key == 'w') { //accelerate
    bob.accelerate(0.2);
  } 
  if (key == 's') { //hyperspace
    bob.myCenterX = (int)(Math.random()*400);
    bob.myCenterY = (int)(Math.random()*400);  
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.myPointDirection = (int)(Math.random()*360);
  }
}
  
  
  
