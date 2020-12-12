class Bullets extends Floater{
  public Bullets(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(2);
  }
  public void show(){
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
 }
