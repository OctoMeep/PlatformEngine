void setup(){
  size(1024,768);
  
  block = createImage(32,32,RGB);
  
  thing = createImage(32,32,RGB);
  for (int i = 0; i < thing.pixels.length; i++) {
  thing.pixels[i] = color(0, 0, 255); 
}
  
  for(int i = 0; i < 20; i++){
    blocks.add(new GameObject((float)Math.floor(random(width-32) / 32)*32,(float)Math.floor(random(height-32) / 32)*32,block));
  }
  blocks.add(new GameObject(64,64,block));
  blocks.add(new GameObject(64,96,block));
  blocks.add(new GameObject(64,128,block));
  blocks.add(new GameObject(64,160,block));
  
  test = new Player(100,50,thing,3,4);
}

ArrayList<GameObject> blocks = new ArrayList<GameObject>();

boolean[] pressed = new boolean[256];

PImage block;
PImage thing;
Player test;

void draw(){
  background(255);
  
  for(GameObject t : blocks){
    t.update();
  }
  
  test.update();
  test.ya = 0.07;
  
  //print(join(str(pressed), ' '));
  //println(pressed[32]);
  fill(0);
  text(test.extraJumps,0,24);
}

void mousePressed(){
  test.anyJump();
}

void keyPressed(){
  pressed[keyCode] = true;
  if (keyCode == 32) {
    test.jump();
  }
}

void keyReleased(){
  pressed[keyCode] = false;
}