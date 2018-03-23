import processing.serial.*;
PImage img;
Serial port;

void setup() {
  size(590,485);
  img = loadImage("colors.jpg");
  port = new Serial(this, "COM3", 9600);
}

void draw() {
  background(0);
  image(img,0,0);
}

void mousePressed() {
  color c = get(mouseX, mouseY);
  String colors = int(red(c))+","+int(green(c))+","+int(blue(c))+"\n";
  print(colors);
  port.write(colors);
}
