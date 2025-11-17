public class Dude {
  private float x, y, vx, vy, count;
  public boolean collided = false;

  public Dude(float x, float y) {
    // assigns random speed from 1-10 to dude
    vx = (float)(Math.random()* 11 + 1);
    vy = (float)(Math.random()* 11 + 1);
    this.x = x;
    this.y = y;
  }
  boolean collidesWith(Dude other) {
    // calculate distance from dude1 to dude2 with distance formula
    float dx = this.x - other.x;
    float dy = this.y - other.y;
    float distance = sqrt(dx*dx + dy*dy);

    return distance < 100;
  }

  void show() {
    body();
  }

  void update() {
    // make the dudes red for longer time after collision
    if (collided) {
      count ++;
      if (count == 20) {
        collided = false;
        count = 0;
      }
    }
    // position updates
    x += vx;
    y += vy;
    // boundary detection
    if ((x + 50) >= 800) {
      vx = -vx;
    }
    if ((x - 50) <= 0) {
      vx = -vx;
    }
    if ((y - 50) <= 0) {
      vy = -vy;
    }
    if ((y + 50) >= 800) {
      vy = -vy;
    }
  }

  private void body() {
    if (collided) {
      fill(255, 0, 0); // red if collided
    } else {
      fill(255); // white otherwise
    }
    circle(x, y, 100);
  }
}
