class Spaceship extends Floater {   
  public Spaceship(){
    corners=4;
    xCorners = new int[]{-8,16,-8,-2};
    yCorners = new int[]{-8,0,8,0};
    myColor=255;
    myCenterX=200;
    myCenterY=200;
    myXspeed=0;
    myYspeed=0;
    myPointDirection=0;
    }
  public void hyperspace(){
    myCenterX=(int)(Math.random()*400);
    myCenterY=(int)(Math.random()*400);
    myPointDirection=Math.random()*360;
    myXspeed=0;
    myYspeed=0;
  }
    public float getX(){
    return (float) myCenterX;
  }
  public float getY(){
    return (float) myCenterY;
  }
}
