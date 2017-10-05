class Block {
  
  int x;
  int y;
  int w;
  int h;
  PImage sprite;
  
  Block(int _x, int _y, PImage _sprite){
    x = _x;
    y = _y;
    sprite = _sprite;
    w = sprite.width;
    h = sprite.height;
  }
  
  void update(){
    image(sprite,x,y);
  }
}