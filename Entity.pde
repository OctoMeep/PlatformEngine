class Entity extends GameObject {  

  float xs;
  float ys;
  float xa;
  float ya;

  boolean collide;

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



    for (GameObject t : blocks) {

      if (xs != 0 && y + h > t.y && y < t.y + t.h && tx + w > t.x && tx < t.x + t.w) {
        println("horizontal");
        xa = 0;
        xs = 0;
        if (tx < t.x) {
          x = t.x - t.w;
        } else {
          x = t.x + t.w;
        }
        return;
      } else {
        x = tx;
      }
      if (ys != 0 && x + w > t.x && x < t.x + t.w && ty + h > t.y && ty < t.y + t.h) {
        println(x + w > t.x && x < t.x + t.w);
        println("vertical");
        ya = 0;
        ys = 0;
        if (ty < t.y) {
          y = t.y - t.h;
        } else {
          y = t.y + t.h;
        }
        return;
      } else {
        y = ty;
      }
    }
  }
}