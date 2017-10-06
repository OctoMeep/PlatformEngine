class MovingPlat extends GameObject {
  MovingPlat(float _x, float _y, PImage _sprite, float _speed, float _x1, float _x2, float _y1, float _y2) {
    super(_x, _y, _sprite);
    speed = _speed;
    x1 = _x1;
    x2 = _x2;
    y1 = _y1;
    y2 = _y2;
  }

  float speed;
  float x1;
  float x2;
  float y1;
  float y2;
  boolean dirx;
  boolean diry;

  void update() {
    super.update();
    if (x1 != x2) {
    if (dirx) {
      x -= speed;
      if (x == x1) {
        dirx = false;
      }
    } else if (dirx == false) {
      x += speed;
      if (x == x2) {
        dirx = true;
      }
    }
  }
    if (y1 != y2) {
      if (diry) {
        y -= speed;
        if (y == y1) {
          diry = false;
        }
      } else if (diry == false) {
        y += speed;
        if (y == y2) {
          diry = true;
        }
      }
    }
  }
}