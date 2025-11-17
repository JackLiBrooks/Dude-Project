public class Dude {
  private float x, y, vx, vy;
  public boolean collided = false;

  public Dude(float x, float y) {
    vx = (float)(Math.random()* 11 + 1);
    vy = (float)(Math.random()* 11 + 1);
    this.x = x;
    this.y = y;
  }
  void show() {
    body();
  }
  
  void update() {
    x += vx;
    y += vy;
    if ((x + 50) >= 800){
      vx = -vx;
    }
    if ((x - 50) <= 0){
      vx = -vx;
    }
    if ((y - 50) <= 0){
      vy = -vy;
    }
    if ((y + 50) >= 800){
      vy = -vy;
    }
    
  }
  
  private void body(){
    circle(x, y, 100);
  }
}
