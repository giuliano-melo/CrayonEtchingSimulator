// A Very simple Crayon Etching(http://www.how-to-arts-and-crafts.com/crayon-etching.html) simulator
// The dark backgroung is used to emulate the indian ink. 
// Use + or - keys to increase/decrease the size of the "etching tool"
// Use < or > keys to decrease/increase color brightness
// Use s key to save your art to a png file.
int strokeSize = 2;
int brightness = 100;

void setup() {
  size(800, 600);
  background(#000000);
  colorMode(HSB, width, height, 100);
  noStroke();
  smooth();
  frameRate(20);
}

void draw() {
  if(mousePressed) {
    fill(mouseX, mouseY, brightness);
    ellipse(mouseX, mouseY, strokeSize, strokeSize);
  }
}

void keyPressed() {
  if(key == '+' && strokeSize < 30) {
    strokeSize++;
  } else if(key == '-' && strokeSize > 0) {
    strokeSize--;
  } else if(key == '>' && brightness < 100) {
    brightness += 10;
  } else if(key == '<' && brightness > 0) {
    brightness -= 10;
  } else if(key == 's' || key == 'S') {
    println("saving new frame");
    saveFrame("my_art.png");
  }
}
