class Player extends Person {
  
  Player(float _x, float _y, PImage _sprite, float _speed, float _jumpSpeed){
    super(_x,_y,_sprite,_speed,_jumpSpeed);
  }
  
  void move(){
    println(x + ", " + y);
    
    if(pressed[32]){
      jump();
    }
    
    int dir = 0;
    dir -= int(pressed[37]);
    dir += int(pressed[39]);
    if(dir == -1){
      goLeft();
    } else if (dir == 1){
      goRight();
    } else {
      //slowDown();
    }
    super.move();
    
  }
}