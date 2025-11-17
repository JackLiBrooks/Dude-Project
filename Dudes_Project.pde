Dude aidan = new Dude(50,100);
Dude micah = new Dude(100,200);

void setup(){
  size(800, 800);
}

void draw(){
  background(40);
  aidan.update();
  aidan.show();
  micah.update();
  micah.show();

}
