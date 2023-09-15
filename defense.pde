Defender defender;
ArrayList<Enemy> enemies;
ArrayList<Laser> lasers;
ArrayList<Effect> effects;

int genRate=10;

void init(){
  defender = new Defender();
  enemies = new ArrayList<Enemy>();
  lasers = new ArrayList<Laser>();
  effects = new ArrayList<Effect>();
}

void genEnemy(){
  float deg=random(2*PI);
  enemies.add(new Enemy(deg));
}

void setup(){
  size(1024, 576);
  init();
}

void display(){
  for(Enemy e: enemies){
    e.display();
  }
  
  for(Laser l: lasers){
    l.display();
  }
  
  defender.display();
}

void draw(){
  background(0, 20, 40);
  translate(width/2, height/2);
  
  if(frameCount%genRate==0){
    genEnemy();
  }
  
  
  for(Laser l: lasers){
    l.move();
  }
  
  for(Enemy e: enemies){
    e.move();
  }
  
  defender.find();
  defender.shoot();
}
