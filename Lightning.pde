nt startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int fadingEffect = (int)(Math.random()*256);
void setup() {
  size(500, 500);
  strokeWeight(5);
  background(0, 0, 0);
}

void draw() {

  int randomR = (int)(Math.random()*256);
  int randomG = (int)(Math.random()*256);
  int randomB = (int)(Math.random()*256);


  while (endX <=500) {
    int randomX = (int)(Math.random()*9);
    int randomY = (int)((Math.random()*18) - 9);
    endX = startX + randomX;
    endY = startY + randomY;
      stroke(randomR, randomG, randomB, fadingEffect);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed() {
  fadingEffect = (int) (Math.random()*200 + 100);
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  redraw();
}
