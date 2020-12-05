class Asteroid extends Floater{
   private double rotSpeed;
   public Asteroid(){
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);
    myXspeed= (Math.random()*4)-2;
    myYspeed = (Math.random()*4)-2;
    myPointDirection = Math.random()*360;
    rotSpeed = (int)(Math.random()*2)-1;
    myColor=color(155,150,150);
   }
    public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getX(){
    return (float) myCenterX;
  }
  public float getY(){
    return (float) myCenterY;
  }
}
