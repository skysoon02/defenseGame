GameMaster GM;  
Defender defender;
ArrayList<Enemy> enemies;
ArrayList<Laser> lasers;
ArrayList<Effect> effects;


void init(){
  GM = new GameMaster();  
  defender = new Defender();
  enemies = new ArrayList<Enemy>();
  lasers = new ArrayList<Laser>();
  effects = new ArrayList<Effect>();
}


void display(){
  for(Enemy e: enemies){
    e.display();
  }
  
  for(Laser l: lasers){
    l.display();
  }
  
  for(Effect e: effects){
    e.display();
  }
  
  defender.display();
}

void setup(){
  size(1024, 576);
  init();
}

void draw(){
  background(0, 20, 40);
  translate(width/2, height/2);
  GM.playing();
  
  for(Laser l: lasers){
    l.move();
  }
  
  for(Enemy e: enemies){
    e.move();
  }
  
  defender.act();
  
  display();
}
