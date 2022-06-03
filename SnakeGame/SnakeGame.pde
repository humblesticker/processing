Snake snake;

void setup() {
  size(600, 600);
  snake = new Snake();
}

void draw() {
  background(51);
  snake.update();
  snake.show();
  delay(300);
}

void keyPressed() {
  snake.move(key);
}  //<>//
