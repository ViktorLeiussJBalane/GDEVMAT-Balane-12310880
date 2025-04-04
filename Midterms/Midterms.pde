public class BlackHoleCore {
  PVector corePosition;
  
  public BlackHoleCore() {
    float x = random(Viewport.minX, Viewport.maxX);
    float y = random(Viewport.minY, Viewport.maxY);
    corePosition = new PVector(x, y);
  }
  
  public void show() {
    noStroke();
    fill(255);
    ellipse(corePosition.x, corePosition.y, 50, 50);
  }
}
