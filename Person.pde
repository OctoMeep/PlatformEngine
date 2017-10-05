class Person extends Entity {

  float speed;
  float jumpSpeed;
  
  int extraJumps;

  Person(float _x, float _y, PImage _sprite, float _speed, float _jumpSpeed) {
    super(_x, _y, _sprite);
    speed = _speed;
    jumpSpeed = _jumpSpeed;
    extraJumps = 1;
  }
  
  void update(){
    super.update();
    if(touching[2]){
      extraJumps = 1;
    }
    if (y > height) {
      this.die();
    }
  }

  void goLeft() {
    xs = -speed;
  }

  void goRight() {
    xs = speed;
  }

  void slowDown() {
    //if (touching[2]) {
      xs = 0;
    /*} else {
      xs += xs / abs(xs) * (speed / 10);
    }*/
  }

  void jump() {
    println("jump");
    if (touching[2] || extraJumps > 0) {
      ys = -jumpSpeed;
      if(!touching[2]){
        extraJumps--;
      }
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
  
  void die() {
    y = 32;
    x = 32;
    xs = 0;
    ys = 0;
  }
}