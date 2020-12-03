class Asteroid extends Floater{
  private double rotSpeed; 
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*5-13);
    yCorners[0] = (int)(Math.random()*5-9);
    xCorners[1] = (int)(Math.random()*5+7);
    yCorners[1] = (int)(Math.random()*5-8);
    xCorners[2] = (int)(Math.random()*5+13);
    yCorners[2] = (int)(Math.random()*5-2.5);
    xCorners[3] = (int)(Math.random()*8-3);
    yCorners[3] = (int)(Math.random()*5+5);
    xCorners[4] = (int)(Math.random()*5-11);
    yCorners[4] = (int)(Math.random()*5+4);
    xCorners[5] = (int)(Math.random()*5-8);
    yCorners[5] = (int)(Math.random()*4-2);
    myColor =170;
    myXspeed = Math.random()*.5-.25;
    myYspeed = Math.random()*.5-.25;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500; //holds center coordinates
    myPointDirection = Math.random()*6.28;
    rotSpeed = Math.random()*2-1;
  }
  
  
  public void setX(int x){
    myCenterX = x;
  }
  public int getX(){
    return (int) myCenterX;
  }
  public void setY(int y){
    myCenterY = y;
  }
  public int getY(){
    return (int) myCenterY;
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
}
