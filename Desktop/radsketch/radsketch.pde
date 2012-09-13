// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, b3, c1, c2;

void setup() {
  size(640, 480);

  // Define colors

  b1 = color(0,191, 255);
  b2 = color(0, 255, 0);
  noLoop();
}

void draw() {
  // Background
  setGradient(0, 0, width/2, height, b1, b2, Y_AXIS);
  setGradient(width/2, 0, width/2, height, b1, b2, Y_AXIS);
 noStroke();
 fill(255, 255, 255);
  ellipse (250, 30, 150, 60);
  ellipse (200, 30, 70, 50);
  ellipse (215, 40, 60, 60);
  ellipse (300, 50, 50, 50);
  ellipse (270, 50, 70, 50);
    ellipse (260, 75, 70, 50);
  ellipse (300, 25, 60, 40);
    ellipse (310, 75, 70, 30);
  ellipse (320, 25, 60, 50);

 noStroke();
 fill(255, 255, 255);
ellipse (450, 70, 80, 40);
  ellipse (400, 70, 70, 50);
  ellipse (415, 80, 60, 60);
  ellipse (500, 90, 50, 50);
  ellipse (470, 90, 70, 50);
    ellipse (460, 105, 70, 50);
  ellipse (475, 45, 80, 40);
  ellipse (510, 95, 90, 30);
  ellipse (510, 55, 80, 70);
  ellipse(200, 635, 80,70);
  stroke(255,0,0);

noStroke();
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}

