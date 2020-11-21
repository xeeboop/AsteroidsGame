Spaceship bob = new Spaceship();
Star[] nickiMinaj = new Star[400];
public void setup(){
  size(500,500);
  background(0);
  for(int i=0;i<nickiMinaj.length;i++){
    nickiMinaj[i]=new Star();
  }  
}
public void draw(){
  background(0);
  for(int i=0;i<nickiMinaj.length;i++){
    nickiMinaj[i].show();
  }
  bob.move();
  bob.show();
}
public void keyPressed(){
  if(key == 'w'){
     bob.accelerate(+1);
     }
  if(key == 's'){
     bob.accelerate(-1);
     }
   if(key == 'a'){
     bob.turn(-10);
     }
  if(key == 'd'){
     bob.turn(+10);
     }
  if(key == 'h'){
     bob.hyperspace();
     }
}  
