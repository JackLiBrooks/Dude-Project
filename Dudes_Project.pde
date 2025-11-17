Dude aidan = new Dude(5,10);
Dude micah = new Dude(10,20);

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
