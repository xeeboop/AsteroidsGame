class Bullet extends Floater{
  private float dRadians;
  public Bullet(Spaceship myShip){
    myCenterX = myShip.myCenterX;
    myCenterY = myShip.myCenterY;
    dRadians = (float)(myShip.myPointDirection * (Math.PI/180));
    myPointDirection = myShip.myPointDirection;
    myXspeed = 5 * Math.cos(dRadians) + myShip.myCenterX;
    myYspeed = 5 * Math.sin(dRadians) + myShip.myCenterY;
  }
  public void show(){
    fill(0, 255, 50);
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
