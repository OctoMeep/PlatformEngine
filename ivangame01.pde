void setup(){
  size(1024,768);
  
  blocks.add(new Block(100,100,block));
}

ArrayList<Block> blocks = new ArrayList<Block>();

PImage block = createImage(32,32,RGB);

void draw(){
  background(255);
  
  for(Block t : blocks){
    t.update();
  }
}