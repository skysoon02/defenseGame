class Enemy{
  float x, y, vx, vy, size, hp;
  Enemy(float deg){
    x=cos(deg)*1000; y=sin(deg)*1000;
    float v=random(2, 4);
    vx=-cos(deg)*v; vy=-sin(deg)*v;
    size=random(15, 26);
    hp=random(1,2);
  }
  
  void move(){
    x+=vx;
    y+=vy;
  }
  
  void display(){
    noStroke();
    fill(63);
    circle(x, y, size);
  }
}
