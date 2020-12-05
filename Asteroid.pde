class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid() {
    rotSpeed =  3;
    corners=6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myColor = color(153,153,153);
    myCenterX = Math.random()*400;
    myCenterY = Math.random()*400;
    myXspeed = Math.random();
    myYspeed = Math.random();
    myPointDirection = Math.random()*361;
   }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
