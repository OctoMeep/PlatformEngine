void setup(){
  size(1024,768);
  
  block = createImage(32,32,RGB);
  
  thing = createImage(32,32,RGB);
  for (int i = 0; i < thing.pixels.length; i++) {
  thing.pixels[i] = color(0, 0, 255); 
}
  
  blocks.add(new GameObject(100,164,block));
  blocks.add(new GameObject(132,196,block));
  blocks.add(new GameObject(164,68,block));
  blocks.add(new GameObject(164,100,block));
  blocks.add(new GameObject(164,132,block));
  
  test = new Player(100,50,thing,1,1);
  test.ya = 0.01;
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
  test.ya = 0.01;
  
  //print(join(str(pressed), ' '));
  //println(pressed[32]);
}

void mousePressed(){
  test.anyJump();
}

void keyPressed(){
  pressed[keyCode] = true;
}

void keyReleased(){
  pressed[keyCode] = false;
}