class Bullet extends Floater{
  private double dRadians;
  public Bullet(Spaceship theship){
    myColor=color(0,255,50);
    myCenterX=theship.myCenterX;
    myCenterY=theship.myCenterY;
    myPointDirection=theship.myPointDirection;
    dRadians = theship.myPointDirection*(Math.PI/180);
    myXspeed = theship.myXspeed + Math.cos(dRadians);
    myYspeed = theship.myYspeed + Math.sin(dRadians);
    accelerate(6);
  }
  public void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;       
  }
  public float getX(){
    return (float) myCenterX;
   }
    public float getY(){
    return (float) myCenterY;
    }
}
