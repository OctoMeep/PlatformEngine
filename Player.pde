class Player extends Person {
  
  Player(float _x, float _y, PImage _sprite, float _speed, float _jumpSpeed){
    super(_x,_y,_sprite,_speed,_jumpSpeed);
  }
  
  void move(){
    println(x + ", " + y);
    
    int dir = 0;
    dir -= int(pressed[37]);
    dir += int(pressed[39]);
    if(dir == -1){
      goLeft();
    } else if (dir == 1){
      goRight();
    } else {
      slowDown();
    }
    super.move();
    
  }
  
  void jump(){
    if(touching[0]){
      xs = -jumpSpeed;
      ys = -jumpSpeed;
    } else if(touching[1]){
      xs = jumpSpeed;
      ys = -jumpSpeed;
    } else {
      super.jump();
    }
  }
}