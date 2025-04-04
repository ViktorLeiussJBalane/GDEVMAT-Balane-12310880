BlackHoleCore singularity;
Particle[] debris;
int totalParticles = 100;
int refreshCycle = 150;

void setup() {
  size(1280, 720, P3D);
  camera(0, 0, Viewport.depth, 0, 0, 0, 0, -1, 0);
  initializeField();
}

void draw() {
  background(0);
  
  for (Particle p : debris) {
    p.moveToward(singularity);
    p.display();
  }
  
  singularity.show();
  
  if (frameCount % refreshCycle == 0) {
    initializeField();
  }
}

void initializeField() {
  singularity = new BlackHoleCore();
  
  debris = new Particle[totalParticles];
  for (int i = 0; i < totalParticles; i++) {
    debris[i] = new Particle();
  }
}
