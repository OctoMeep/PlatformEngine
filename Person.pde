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

  void slowDown() {
    if (touching[2]) {
      xs = 0;
    } else {
      xs += xs / abs(xs) * (speed / 10);
    }
  }

  void jump() {
    println("jump");
    if (touching[2]) {
      ys = -jumpSpeed;
    }
  }

  void anyJump() {
    println("any jump");
    if (touching[0]) {
      xs = -jumpSpeed;
    } else if (touching[1]) {
      xs = jumpSpeed;
    } else if (touching[2]) {
      ys = -jumpSpeed;
    } 
    if (touching[3]) {
      ys = jumpSpeed;
    }
  }
}