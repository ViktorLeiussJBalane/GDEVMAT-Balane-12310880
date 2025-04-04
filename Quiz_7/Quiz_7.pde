Mover[] movers;
int moverCount = 100;

void setup() {
  size(1280, 720, P3D);
  camera(0, 0, Display.viewDepth, 0, 0, 0, 0, -1, 0);

  movers = new Mover[moverCount];
  for (int i = 0; i < moverCount; i++) {
    movers[i] = new Mover();
  }
}

PVector getMousePosition() {
  float x = mouseX - Display.halfWidth;
  float y = -(mouseY - Display.halfHeight);
  return new PVector(x, y);
}

void draw() {
  background(250, 230, 220);  // Light peach background

  for (int i = 0; i < moverCount; i++) {
    movers[i].move();
    movers[i].show();
  }
}
``
