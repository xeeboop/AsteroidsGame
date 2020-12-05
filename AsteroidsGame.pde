Star[] nickiMinaj = new Star[400];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  background(0);
  for(int i = 0; i < nickiMinaj.length; i++){
    nickiMinaj[i] = new Star();
  }
  for(int j= 0; j < 20; j++){
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
  for(int h = 0; h < ast.size(); h++){
    ast.get(h).show();
    ast.get(h).move();
    if(dist(ast.get(h).getX(),ast.get(h).getY(),bob.getX(),bob.getY()) < 20){
      ast.remove(h);
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
