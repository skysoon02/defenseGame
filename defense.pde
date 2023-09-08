Defender defender;
ArrayList<Enemy> enemies;
ArrayList<Laser> lasers;

int genRate=10;

void init(){
  defender = new Defender();
  enemies = new ArrayList<Enemy>();
  lasers = new ArrayList<Laser>();
}

void genEnemy(){
  float deg=random(2*PI);
  enemies.add(new Enemy(deg));
}

void setup(){
  size(1024, 576);
  init();
}

void draw(){
  background(0, 20, 40);
  translate(width/2, height/2);
  
  if(frameCount%genRate==0){
    genEnemy();
  }
  
  
  for(Laser l: lasers){
    l.move();
    l.display();
  }
  
  for(Enemy e: enemies){
    e.move();
    e.display();
  }
  
  defender.find();
  defender.shoot();
  defender.display();
}
