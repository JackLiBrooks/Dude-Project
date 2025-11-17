Dude aidan = new Dude(50, 100);
Dude micah = new Dude(100, 200);

void setup() {
  size(800, 800);
}

void draw() {
  background(40);
  aidan.update();
  micah.update();
  if (aidan.collidesWith(micah)) {
    aidan.collided = true;
    micah.collided = true;
    // make dudes "bounce" off of each other
    aidan.vx *= -1;
    aidan.vy *= -1;
    micah.vx *= -1;
    micah.vy *= -1;
  }
  aidan.show();
  micah.show();
}
