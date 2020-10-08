// Coding Bootcamp Project 2020
// Andreas Salcedo

float meshSize;
int squareSize;
float n;

void setup() {
  size(800, 800, P3D);
  meshSize = 50;
  squareSize = 10;
  noLoop();
}

void draw() {
  background(0);
  rotateX(radians(45));
  translate(width/5,height/5,-100);
  
  beginShape(QUAD_STRIP); 
  for (int y = 0; y < meshSize; y++) {
    for (int x = 0; x < meshSize; x++) {
      n = map(noise(random(0,1)),0,1,-10,100);
      vertex(0+(squareSize*x), 0+(squareSize*y),n);
      vertex(squareSize+(squareSize*x), 0+(squareSize*y));
      vertex(0+(squareSize*x), squareSize+(squareSize*y));
      vertex(squareSize+(squareSize*x), squareSize+(squareSize*y));
    }
  }
  endShape();
}
