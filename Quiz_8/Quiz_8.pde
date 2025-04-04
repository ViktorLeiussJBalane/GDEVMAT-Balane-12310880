Bouncer[] bouncers = new Bouncer[10]; // Array of bouncing objects

PVector wind = new PVector(0.1, 0);  // Slightly reduced wind force
PVector gravity = new PVector(0, -0.4);

void setup() {
  size(1280, 720, P3D);
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);

  for (int i = 0; i < bouncers.length; i++) {
    bouncers[i] = new Bouncer();

    bouncers[i].mass = int(random(1, 11));
    bouncers[i].scale = bouncers[i].mass * 12;  // Slightly smaller sizes

    // Gradient color effect
    bouncers[i].r = map(i, 0, bouncers.length, 0, 255);
    bouncers[i].g = 50;
    bouncers[i].b = map(i, 0, bouncers.length, 255, 0);
    bouncers[i].a = random(180, 255);

    bouncers[i].position.set(-500, 200);
  }
}

void draw() {
  background(20, 25, 30);  // Dark navy background

  for (int i = 0; i < bouncers.length; i++) {
    bouncers[i].render();
    bouncers[i].update();

    // Apply forces with slight variations for a more natural movement
    PVector windVariation = new PVector(wind.x + random(-0.02, 0.02), wind.y);
    bouncers[i].applyForce(windVariation);
    bouncers[i].applyForce(gravity);

    // Bounce behavior with a small variation to prevent predictable movement
    if (bouncers[i].position.x <= Bounds.left || bouncers[i].position.x >= Bounds.right) {
      bouncers[i].velocity.x *= -1 * random(0.9, 1.1);
    }

    if (bouncers[i].position.y <= Bounds.top || bouncers[i].position.y >= Bounds.bottom) {
      bouncers[i].velocity.y *= -1 * random(0.9, 1.1);
    }
  }
}
