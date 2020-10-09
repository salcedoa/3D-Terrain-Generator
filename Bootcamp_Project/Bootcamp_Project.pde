Plane land;

void setup() {
  size(800, 800, P3D);
  land = new Plane();
  land.createSurface(-100,50);
}

void draw() {
  background(0);
 
  pointLight(255, 255, 255, 640, 400, mouseX); // lighting effect for day night cycle
  land.draw();

}
