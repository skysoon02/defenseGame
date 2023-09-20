class Effect{
  int x, y, time;
  Effect(){}
  Effect(int _x, int _y){
    _x=x;
    _y=y;
  }
  
  void display(){};
}

class EffectExplosion extends Effect{
  EffectExplosion(int _x, int _y){
    x=_x;
    y=_y;
    time=4;
  }
  void display(){
    noStroke();
    switch(time){
      case 4:
        print(time);
        fill(255, 255, 255);
        circle(x, y, 15);
        break;
      case 3:
        fill(255, 255, 255);
        circle(x, y, 30);
        fill(255, 255, 0);
        circle(x, y, 20);
        fill(255, 0, 0);
        circle(x, y, 10);
        break;
      case 2:
        fill(255, 255, 0);
        circle(x, y, 20);
        fill(255, 0, 0);
        circle(x, y, 10);
        break;
      case 1:
        fill(255, 0, 0);
        circle(x, y, 15);
        fill(0, 0, 0);
        circle(x, y, 5);
        break;
    }
    time--;
  }
}

class EffectExplosionBig extends Effect{
  EffectExplosionBig(int _x, int _y){
    x=_x;
    y=_y;
    time=90;
  }
  void display(){
    noStroke();
    if(time>80){
      fill(255, 255, 255);
      circle(x, y, (90-time)*2);
    }
    else if(time>60){
      fill(255, 0, 0);
      circle(x, y, max(0, (100-time)*1.25));
      fill(255, 255, 255-255*(80-time)/20);
      circle(x, y, max(0, (100-time)));
    }/*
    else{
      fill(255, 255, 0);
      circle(x, y, (70-time)*2);
      fill(255, 0, 0);
      circle(x, y, (60-time)*3);
      fill(0, 20, 40);  //background color
      circle(x, y, 90-time);
    }*/
      
    time--;
  }
}
