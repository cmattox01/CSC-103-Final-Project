class campusBus {

  // create vars //
  int x;
  int y;
  int w;
  float h;

  float xSpeed;

  float left;
  float right;
  float top;
  float bottom;

  PImage[] image; // does this go here? Do I even need it? Idk HELP

  // campusBus cosnstructor //
  campusBus(int tempX, int tempY, float tempSpeed) {
    x = tempX;
    y = tempY;
    w = 50;
    h = 30;

    xSpeed = tempSpeed;

    left = x;
    right = x + w;
    top = y;
    bottom = y + h;

    //image = tempImage;
  } // end of constuctor

  // make the bus (or well rectangle more like it) //
  void render() {
    //fill(255);
    //rect(x, y, w, h);
    busAnimation.display(x,y);
  } // end of render

  // move the bus //
  void move() {
    x += xSpeed;
    if (x > width) {
      x = -w;
    } 
    //else if (x < 0){
    //  x = width;
    //}
    left = x;
    right = x + w;
    top = y;
    bottom = y + h;
  } // end of move

  void collisionDetection(Player tempPlayer) {
    if (tempPlayer.left < right && tempPlayer.right > left && 
      tempPlayer.top < bottom && tempPlayer.bottom > top) {
      //println("hit a car");
      tempPlayer.x = width/2;
      tempPlayer.y = height - 40;
      tempPlayer.playerLives -=  1;
    }
  } // end of collisionDetection
} // end of campusBus
