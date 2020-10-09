// Bootcamp Project 2020
// Andreas Salcedo

Plane land;
Plane water;

void setup() {
  size(800, 800, P3D);
  land = new Plane();
  water = new Plane();
  land.createSurface(-50, 100);
  water.createSurface(-5, 5);
}

void draw() {
  // lighting effect for day night cycle controlled by millis()
  float time = millis();
  float lightPosZ = map(sin(0.0009*time), -1, 1, 170, 760);

  // changing the colour of the background also using millis()
  float skyColourR = map(sin(0.0009*time), -1, 1, 0, 0);
  float skyColourG = map(sin(0.0009*time), -1, 1, 0, 190);
  float skyColourB = map(sin(0.0009*time), -1, 1, 0, 245);
  background(skyColourR, skyColourG, skyColourB);
  pointLight(255, 255, 255, 640, 400, lightPosZ);

  // positioning the two planes
  rotateX(radians(400));
  translate(100, 230);

  land.draw(#1A551A);
  water.draw(#186FB4);
}
