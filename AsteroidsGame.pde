Star[] nickiMinaj;
Spaceship bob = new Spaceship();
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  background(0);
  nickiMinaj = new Star[200];
  for(int i = 0; i < nickiMinaj.length; i++){
    nickiMinaj[i] = new Star();
  }
  for(int j = 0; j < 21; j++){
    ast.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nickiMinaj.length; i++){
    nickiMinaj[i].show();
  }
  bob.show();
  bob.move();
  for(int i = 0; i <ast.size(); i++){
   ast.get(i).show();
   ast.get(i).move();
    if(dist(ast.get(i).getX(),ast.get(i).getY(),bob.getX(),bob.getY()) < 20){
     ast.remove(i);
    }
  }
}
public void keyPressed(){
  if(key == 'w'){
     bob.accelerate(.5);
     }
  if(key == 's'){
     bob.accelerate(-.5);
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
