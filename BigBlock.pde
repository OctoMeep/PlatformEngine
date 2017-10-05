class BigBlock extends GameObject {
  BigBlock(float _x, float _y, PImage _sprite, float _w, float _h){
    super(_x,_y,_sprite);
    w = _w;
    h = _h;
    if (w % sprite.width !=0 || h % sprite.height !=0) {
      throw new IllegalArgumentException("Dimensions not divisible by Sprite dimensions");
    }
  }
  
  void update(){
    for(int i = 0 ; i < w ; i += sprite.width) {
      for(int j = 0 ; j < h ; j += sprite.height) {
        image(sprite,x+i,y+j);
      }
    }
  }
}