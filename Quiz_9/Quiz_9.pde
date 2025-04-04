Mover[] movers = new Mover[8]; // Array of movers

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  
  int posY = 0;
  for (int i = 0; i < movers.length; i++) {
    posY = 2 * (Bounds.windowHeight / 8) * (i - (8 / 2));
    movers[i] = new Mover();
    movers[i].position.set(-500, posY);

    movers[i].mass = int(random(1, 11));
    movers[i].scale = movers[i].mass * 15;

    // New color gradient (blue-green)
    movers[i].r = map(i, 0, movers.length, 50, 0);
    movers[i].g = map(i, 0, movers.length, 180, 255);
    movers[i].b = map(i, 0, movers.length, 255, 100);
    movers[i].a = random(180, 255);
  }
}

void draw()
{
  background(30); // Dark gray background

  // Adjusted stroke color to cyan
  stroke(0, 255, 255);
  strokeWeight(2); 
  line(0, 360, 0, -360);

  for (int i = 0; i < movers.length; i++) {
    float mew = (movers[i].position.x > 0) ? random(0.35, 0.45) : random(0.005, 0.015); 
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = movers[i].velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    movers[i].applyForce(friction);

    // Slightly varying acceleration based on x position
    float accelX = map(movers[i].position.x, -500, 500, 0.1, 0.3);
    PVector acceleration = new PVector(accelX, 0);
    movers[i].applyForce(acceleration);

    movers[i].render();
    movers[i].update();
  }
}
