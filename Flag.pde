class Flag extends GameObject {
  Flag(float _x, float _y, PImage _sprite) {
    super(_x, _y, _sprite);
  }
  void update() {
    super.update();
    if (this.colliding(test)) {
      test.next();
    }
  }
}