class babymobs extends Enemy {
  int timer;


  babymobs (int x, int y) {
    super(1000, 100, x, y);
    timer = 0;
  }

  void show() {
    fill(0);
    ellipse(location.x, location.y, 100, 100);
    fill(RED);
    textSize(10);
    text(HEALTHPOINTS, location.x, location.y);
  }
  
  void act() {
    super.act();
    timer++;
    if (timer > 100) {
      myObjects.add(new Follower(rx, ry));
      timer = 0;
    }
  }
}
