class Defender{
  int x, y;
  float deg;
  int shootRate=5;
  Defender(){
    x=0;
    y=0;
    deg=0;
  }
  
  void find(){
    if(enemies.size()==0) return;
    
    Enemy minE=enemies.get(0);
    for(int i=1; i<enemies.size(); i++){
      Enemy e = enemies.get(i);
      if(dist(x, y, e.x, e.y) < dist(x, y, minE.x, minE.y)){
        minE=e;
      }
    }
    
    deg = atan2(minE.y, minE.x);
  }
  
  void shoot(){
    if(frameCount%shootRate==0){
      lasers.add(new Laser(deg));
    }
  }
  
  void display(){
    noStroke();
    fill(127);
    circle(x, y, 40);
    
    strokeWeight(5);
    stroke(191);
    line(x, y, cos(deg)*30, sin(deg)*30);
  }
}
