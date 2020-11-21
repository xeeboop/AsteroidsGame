class Star{
 private int myX, myY, myColor;
 public Star(){
   myX=(int)(Math.random()*500);
   myY=(int)(Math.random()*500);
   myColor=color(255,100,0);
 }
 public void show(){
   fill(myColor);
   ellipse(myX,myY,3,3);
 }
}
