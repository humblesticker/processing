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
    if(this.x % this.Size == 0 && this.y % this.Size == 0) updateSpeed(this.direction); //<>// //<>//
    
    this.x += this.xspeed;
    this.y += this.yspeed;
  }
  
  void updateSpeed(char direction) {
    this.xspeed = 0;
    this.yspeed = 0;
    
    if(direction == 'a') this.xspeed = -1;
    else if(direction == 'd') this.xspeed = 1;
    else if(direction == 'w') this.yspeed = -1;
    else if(direction == 's') this.yspeed = 1;
  }
  
  void show() {
    fill(255);
    rect(this.x, this.y, Size, Size);
  }
  
  void move(char direction) {
    this.direction = direction; //<>//
  }
}
