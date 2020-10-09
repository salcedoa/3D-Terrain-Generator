// Bootcamp Project 2020
// Andreas Salcedo

Plane land;
Plane water;

void setup() {
  size(800, 800, P3D);
  land = new Plane();
  water = new Plane();
  land.createSurface(-50,100);
  water.createSurface(-5,5);
}

void draw() {
  background(0);
  pointLight(255, 255, 255, 640, 400, mouseY); // lighting effect for day night cycle
  
  rotateX(radians(400)); // positioning the two planes
  translate(230, 230);
  
  land.draw(#1A551A);
  water.draw(#7EBBF0);

}
