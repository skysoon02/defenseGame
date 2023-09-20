class GameMaster{
  int genRate=10;
  
  GameMaster(){
  }
  
  void playing(){
    if(frameCount%genRate==0){
      genEnemy();
    }
    checkCollision();
    checkLaser();
    checkEffect();
  }
  
  
  void genEnemy(){
    float deg=random(2*PI);
    enemies.add(new Enemy(deg));
  }
  
  void checkCollision(){
    for(int i=lasers.size()-1; i>=0; i--){
      Laser l = lasers.get(i);
      for(int j=enemies.size()-1; j>=0; j--){
        Enemy e = enemies.get(j);
        if(dist(l.x, l.y, e.x, e.y)<=e.size){
          effects.add(new EffectExplosion(int(l.x), int(l.y)));
          println(int(l.x), int(l.y));
          lasers.remove(i);
          e.hp--;
          if(e.hp<=0){
            effects.add(new EffectExplosionBig(int(e.x), int(e.y)));
            enemies.remove(j);
          }
          break;
        }
      }
    }
  }
  
  void checkLaser(){
    for(int i=lasers.size()-1; i>=0; i--){
      Laser l = lasers.get(i);
      if(l.x+l.len<-width/2 || l.x-l.len>width/2 || l.y+l.len<-height/2 || l.y-l.len>height/2){
        lasers.remove(i);
      }
    }
  }
  
  void checkEffect(){
    for(int i=effects.size()-1; i>=0; i--){
      Effect e = effects.get(i);
      if(e.time==0){
        effects.remove(i);
      }
    }
  }

}
