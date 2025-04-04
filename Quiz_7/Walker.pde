public class Mover {
  public PVector pos = new PVector();
  public PVector speed = new PVector();
  public PVector accel = new PVector();
  public float speedLimit = 10;
  public float sizeFactor;

  public Mover() {
    pos = new PVector(random(Display.boundLeft, Display.boundRight), random(Display.boundBottom, Display.boundTop));
    sizeFactor = random(5, 20);
    accel = new PVector(-0.01, 0.1);
  }

  public void move() {
    PVector destination = getMousePosition();
    PVector dir = PVector.sub(destination, this.pos);

    dir.normalize();
    dir.mult(0.2);

    this.accel = dir;

    this.speed.add(this.accel);
    this.speed.limit(speedLimit);
    this.pos.add(this.speed);
  }

  public void show() {
    noStroke();
    fill(60, 180, 140, 200);  // Vibrant Blue-Green
    ellipse(pos.x, pos.y, sizeFactor, sizeFactor);
  }
}
