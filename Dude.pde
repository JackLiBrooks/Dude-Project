public class Dude {
  private float x, y, vx, vy;

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
    
  }
  
  private void body(){
    circle(x, y, 100);
  }
}
