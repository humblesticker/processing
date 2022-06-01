Snake snake;

void setup() {
  size(600, 600);
  snake = new Snake();
}

void draw() {
  background(51);
  snake.update();
  snake.show();
}

void keyPressed() {
  snake.move(key);
}

class Snake {
  int x;
  int y;
  int xspeed;
  int yspeed;
  int Size = 20;
  char direction;
  
  // move right 
  Snake() {
    this.x = 0;
    this.y = 0;
    this.xspeed = 1;
    this.yspeed = 0;
    this.direction = 'd';
  }
  
  void update() {
    if(horizontal(this.direction)) {
      if(this.xspeed == 0 && this.y % this.Size == 0) { this.xspeed = speed(this.direction); this.yspeed = 0; } //<>//
    } else {
      if(this.yspeed == 0 && this.x % this.Size == 0) { this.yspeed = speed(this.direction); this.xspeed = 0; }
    } //<>//
    
    this.x += this.xspeed;
    this.y += this.yspeed;
  }
  
  void show() {
    fill(255);
    rect(this.x, this.y, Size, Size);
  }
  
  void move(char direction) {
    if(allowed(this.direction, direction)) this.direction = direction; //<>//
    println("this.direction: " + this.direction);
  }
  
  boolean allowed(char current, char next) { 
    return horizontal(current) ^ horizontal(next);
  }
  
  boolean horizontal(char direction) { return direction == 'a' || direction == 'd'; }
  boolean vertical(char direction) { return direction == 'w' || direction == 's'; }
  int speed(char direction) { return direction == 'a' || direction == 'w' ? -1 : 1; }
}
