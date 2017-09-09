float height1 = 0;
boolean isCovered = false;
ArrayList<Float> x = new ArrayList<Float>();
ArrayList<Float> y = new ArrayList<Float>();
void setup() {
  size(600,600);
  background(0, 87, 200);
  //Set x to a random between 0 and 600, y is a constant (0)
  for(int i = 0; i < 60; i++) {
   //Set the x to a random
   x.add(random(600));
   y.add(random(600));
  }
}
void draw() {
background(0, 87, 200);
  for(int i = 0; i < 60; i++) {
    noStroke();
    ellipse(x.get(i), y.get(i), 10, 10); 
    y.set(i, y.get(i) + 1);
    if(y.get(i) > 600&&y.get(i) < 601) {
      height1 = height1 + 10;
      y.set(i, 0.0);
    }
    fill(255, 255, 255);
    rect(0, 600 - height1, 600, 600);
  }
}