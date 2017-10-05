void setup(){
  size(1024,768);
  
  block = createImage(32,32,RGB);
  
  thing = createImage(32,32,RGB);
  for (int i = 0; i < thing.pixels.length; i++) {
  thing.pixels[i] = color(0, 0, 255); 
}
  
  blocks.add(new GameObject(100,164,block));
  blocks.add(new GameObject(164,68,block));
  blocks.add(new GameObject(164,100,block));
  blocks.add(new GameObject(164,132,block));
  
  test = new Entity(100,50,thing);
  test.ya = 0.1;
  test.xs = 1;
}

ArrayList<GameObject> blocks = new ArrayList<GameObject>();

PImage block;
PImage thing;
Entity test;

void draw(){
  background(255);
  
  for(GameObject t : blocks){
    t.update();
  }
  
  test.update();
}