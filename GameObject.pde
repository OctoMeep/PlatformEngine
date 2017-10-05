class GameObject {
  
  float x;
  float y;
  float w;
  float h;
  PImage sprite;
  
  GameObject(float _x, float _y, PImage _sprite){
    x = _x;
    y = _y;
    sprite = _sprite;
    w = sprite.width;
    h = sprite.height;
  }
  
  void update(){
    image(sprite,x,y);
  }
  
  boolean colliding(GameObject t){
    return x + w > t.x && x < t.x + t.w && y + h > t.y && y < t.y + t.h;
  }
  
  boolean colliding(float tx, float ty, float tw, float th){
    return x + w > tx && x < tx + tw && y + h > ty && y < ty + th;
  }
}