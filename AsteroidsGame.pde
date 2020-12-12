Spaceship bob= new Spaceship();
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();
ArrayList <Bullets> shots = new ArrayList <Bullets>();
public void setup() {
 
  size(400, 400);
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  
  for(int i = 0; i<20; i++){
    asteroid.add(new Asteroid());
  }

}

public void draw() {
  background(0);
  
  bob.move();
  bob.show();
  for(int i = 0; i<200; i++){
    stars[i].show();
  }
  //making the bullets show
  for(int i = 0; i<shots.size(); i++){
    shots.get(i).show();
    shots.get(i).move();
  }
  //testing for bullet collision dont mind the mess
  for(int i = 0; i<asteroid.size(); i++){
    asteroid.get(i).show();
    asteroid.get(i).move();
    for(int j = 0; j<shots.size(); j++){
      if(dist((float)asteroid.get(i).getX(), (float)asteroid.get(i).getY(), (float)shots.get(j).getX(), (float)shots.get(j).getY()) <= 15){                 
        asteroid.remove(i);
        shots.remove(j);
        break;
      }
    }
  } 
}

public void keyPressed(){

  if (key == 'a') { //turn left
    bob.turn(-10);
  }
  if (key == 'd') { //turn right
    bob.turn(10);
  }
  if (key == 'w') {
    bob.accelerate(0.2);
  } 
  if (key == 's') {
    bob.myCenterX = (int)(Math.random()*400);
    bob.myCenterY = (int)(Math.random()*400);  
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.myPointDirection = (int)(Math.random()*360);
  }
  if(key == 'k'){
    shots.add(new Bullets(bob));
    }
}

  
  
  
