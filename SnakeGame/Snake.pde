class Snake {
  ArrayList<PVector> body;
  int xspeed;
  int yspeed;
  int Size = 20;
  char direction;
  
  Snake() {
    this.body = new ArrayList<PVector>();
    this.body.add(new PVector(40, 0));
    this.body.add(new PVector(20, 0));
    this.body.add(new PVector(0, 0));
    
    this.xspeed = this.Size;
    this.yspeed = 0;
  }

  void update() {
    PVector head = body.get(0);
    this.body.add(0, new PVector(head.x + this.xspeed, head.y + this.yspeed));
    this.body.remove(body.size() - 1);
  }
  
  void show() {
    fill(255);
    for(PVector pos : this.body) 
      rect(pos.x, pos.y, this.Size, this.Size);
  }
  
  void move(char direction) {
    this.xspeed = 0;
    this.yspeed = 0;
    
    if(direction == 'a') this.xspeed = -this.Size;
    else if(direction == 'd') this.xspeed = this.Size;
    else if(direction == 'w') this.yspeed = -this.Size;
    else if(direction == 's') this.yspeed = this.Size;
  }
}
