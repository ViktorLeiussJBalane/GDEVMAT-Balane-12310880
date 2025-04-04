int frameCountReset = 0;

void setup()
{
  size(1200, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
}

void draw()
{
  // Clear screen after 300 frames
  if (frameCountReset >= 300)
  {
    background (255);
    frameCountReset = 0;
  }
  // For position
  float gaussian = randomGaussian();
  float standardDeviation = 500;
  float mean = 100;
  
  float x = standardDeviation * gaussian + mean;
  float y = random(-300, 300);
  
  // For size
  float gaussianScale = randomGaussian();
  float standardDeviationScale = 10; 
  float meanSize = 30;
  
  float circleSize = abs(standardDeviationScale * gaussianScale + meanSize);
   
  float r = random(0, 255);  
  float g = random(0, 255);  
  float b = random(0, 255);   
  float a = random(10, 100);  
    
  noStroke();
  fill(r, g, b, a);
  circle(x, y, circleSize);
  
  frameCountReset++;
}
