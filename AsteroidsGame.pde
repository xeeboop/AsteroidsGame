Star[] nickiMinaj = new Star[400];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
ArrayList <Bullet> boom = new ArrayList <Bullet>();
int health = 100;
int points = 0;
public void setup(){
  size(500,500);
  background(0);
  for(int i = 0; i < nickiMinaj.length; i++){
    nickiMinaj[i] = new Star();
  }
  for(int j= 0; j < 20; j++){
    ast.add(new Asteroid());
  }
}
public void draw(){
  background(0);
  if(health==0){
    fill(153,0,0);
    textSize(60);
    textAlign(CENTER);
    text("You Died",250,250);
    return;
  }
  for(int i = 0; i < nickiMinaj.length; i++){
    nickiMinaj[i].show();
  }
  bob.move();
  bob.show();
  for(int h = 0; h < ast.size(); h++){
    ast.get(h).show();
    ast.get(h).move();
    if(dist(ast.get(h).getX(),ast.get(h).getY(),bob.getX(),bob.getY()) < 20){
      ast.remove(h);
      health-=10;
    }
  }
  for(int o=0;o<boom.size();o++){
    boom.get(o).move();
    boom.get(o).show();   
  for(int i=0; i<ast.size();i++){
    for(int j=0; j<boom.size();j++){
      if(dist(ast.get(i).getX(), ast.get(i).getY(),boom.get(j).getX(), boom.get(j).getY()) < 19){
        ast.remove(i);
        boom.remove(j);
        points++;
        break;
      }
    }
  }
 }
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("Score: " + points, 60, 470);
  text("Health: " + health + "%", 80, 30);
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
  if(key == ' '){
     boom.add(new Bullet(bob));
     }
}  
