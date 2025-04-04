public class Particle {
  PVector pos;
  float mass;
  color hue;
  
  public Particle() {
    float x = (float)(randomGaussian() * (Viewport.screenW / 3.0));
    float y = (float)(randomGaussian() * (Viewport.screenH / 3.0));
    x = constrain(x, Viewport.minX, Viewport.maxX);
    y = constrain(y, Viewport.minY, Viewport.maxY);
    pos = new PVector(x, y);
    
    mass = random(10, 35);
    hue = color(random(255), random(255), random(255));
  }
  
  public void moveToward(BlackHoleCore core) {
    PVector pull = PVector.sub(core.corePosition, pos);
    float distortion = noise(pos.x * 0.01, pos.y * 0.01, frameCount * 0.01);
    float angleShift = map(distortion, 0, 1, -PI/8, PI/8);
    pull.rotate(angleShift);
    
    pull.normalize();
    float velocity = 8;
    pull.mult(velocity);
    
    pos.add(pull);
  }
  
  public void display() {
    noStroke();
    fill(hue);
    ellipse(pos.x, pos.y, mass, mass);
  }
}
