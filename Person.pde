class Person extends Entity {

  float speed;
  float jumpSpeed;

  Person(float _x, float _y, PImage _sprite, float _speed, float _jumpSpeed) {
    super(_x, _y, _sprite);
    speed = _speed;
    jumpSpeed = _jumpSpeed;
  }


  void goLeft() {
    xs = -speed;
  }

  void goRight() {
    xs = speed;
  }

  void jump() {
    println("jump");
    if (touching[2]) {
      ys = -jumpSpeed;
    }
  }
}