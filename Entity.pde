class Entity extends GameObject {  

  float xs;
  float ys;
  float xa;
  float ya;
  
  boolean collide;
  
  Entity(float _x, float _y, PImage _sprite){
    super(_x,_y,_sprite);
    collide = true;
  }
  
  void update(){ 
    super.update();
    move();
  }
  
  void move(){
    xs += xa;
    ys += ya;
    float tx = x + xs;
    float ty = y + ys;
    
    
    
    for(GameObject t : blocks){
      if(x + w > t.x && x < t.x + t.w && ty + h > t.y && ty < t.y + t.h){
        println(x + w > t.x && x < t.x + t.w);
        println("vertical");
        ya = 0;
        if(ty < t.y){
          y = t.y - t.h;
        } else {
          y = t.y + t.h;
        }
        blocks.remove(t);
        return;
        
      } else {
        y = ty;
      }
      
      if(y + h > t.y && y < t.y + t.h && tx + w > t.x && tx < t.x + t.w){
        println("horizontal");
        xa = 0;
        if(tx < t.x){
          x = t.x - t.w;
        } else {
          x = t.x + t.w;
        }
        return;
      } else {
        x = tx;
      }
    }
  }
}