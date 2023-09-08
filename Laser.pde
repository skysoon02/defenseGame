class Laser{
  float x, y, vx, vy, len, deg;
  Laser(float _deg){
    deg=_deg;
    x=0; y=0;
    float v=10;
    vx=cos(deg)*v; vy=sin(deg)*v;
    len=10;
  }
  
  void move(){
    x+=vx;
    y+=vy;
  }
  
  void display(){
    strokeWeight(1);
    stroke(0, 255, 0);
    line(x, y, x-cos(deg)*len, y-sin(deg)*len);
  }
}
