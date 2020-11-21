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
  public void setXspeed(double x) {
    myXspeed = x;
  }
   public void setYspeed(double y) {
    myYspeed = y;
  }
  public void hyperspace(){
    background(0);
    myCenterX=(int)(Math.random()*400);
    myCenterY=(int)(Math.random()*400);
    myPointDirection=Math.random()*360;
    myXspeed=0;
    myYspeed=0;
  }
}
