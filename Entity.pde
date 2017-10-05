class Entity extends GameObject {  

  float xs;
  float ys;
  float xa;
  float ya;

  boolean collide;
  boolean[] touching = {false,false,false,false};

  Entity(float _x, float _y, PImage _sprite) {
    super(_x, _y, _sprite);
    collide = true;
  }

  void update() { 
    super.update();
    move();
  }

  void move() {
    xs += xa;
    ys += ya;
    float tx = x + xs;
    float ty = y + ys;
    
    touching[0] = false;
    touching[1] = false;
    touching[2] = false;
    touching[3] = false;
    
    for (GameObject t : blocks) {

      if(t.colliding(tx,ty,w,h)){
        
        if (y < t.y && ys > 0) {
          ty = t.y - t.h;
          ys = 0;
          touching[2] = true;
        }
        
        if (y > t.y && ys < 0) {
          ty = t.y + t.h;
          ys = 0;
          touching[3] = true;
        }
        
        if(t.colliding(tx,ty,w,h)){
        if (x < t.x && xs > 0) {
          tx = t.x - t.w;
          xs = 0;
          touching[0] = true;
        }
        
        if (x > t.x && xs < 0) {
          tx = t.x + t.w;
          xs = 0;
          touching[1] = true;
        }
        }
        
      }
      
    }
    println(touching);
    x = tx;
    y = ty;
  }
  
}