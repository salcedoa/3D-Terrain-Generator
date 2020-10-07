// Coding Bootcamp Project 2020
// Andreas Salcedo

void setup() {
  size(800, 500, P3D);
}

void draw() {
  for (int x = 0; x < 10; x++) {
    for (int y = 0; y < 10; y++) {
      beginShape(QUAD_STRIP);
      vertex(x+10,y+10,0);
      vertex(x+100,y+100,0);
      vertex(x+200,y+200,0);
      endShape();
    }
  }
}
