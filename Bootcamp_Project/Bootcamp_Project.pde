// Coding Bootcamp Project 2020
// Andreas Salcedo

int meshSize, sqrSize;
float n;
float[][] heights; // all z coordinates

void setup() {
  size(800, 800, P3D);
  //noFill();
  fill(#1A551A);
  meshSize = 36; // size of the grid
  sqrSize = 10; // width of each individual square

  heights = new float[meshSize][meshSize];
  for (int y = 0; y < meshSize; y++) {
    for (int x = 0; x < meshSize; x++) {
      heights[x][y] = random(-10, 10);
    }
  }
}

void draw() {
  background(0);
  stroke(255);

  rotateX(radians(400));
  translate(230, 230);
  
  //camera(mouseX, 400, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0); // upward axis is z
  
  for (int y = 0; y < meshSize-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < meshSize; x++) {
      vertex(0+(sqrSize*x), sqrSize+(sqrSize*y), heights[x][y+1]);
      vertex(sqrSize*x, sqrSize*y, heights[x][y]);
    }
    endShape();
  }
}
