class movingPlatforms {

  // create vars //
  int x;
  int y;
  int w;
  float h;

  float left;
  float right;
  float top;
  float bottom;

  float xSpeed;

  boolean onMP;

  // movingPlatforms cosnstructor //
  movingPlatforms(int tempX, int tempY, float tempSpeed) {
    x = tempX;
    y = tempY;
    w = 150;
    h = 40;

    left = tempX;
    right = tempX + w;
    top = tempY;
    bottom = tempY + h;

    xSpeed = tempSpeed;
  } // end of constuctor

  // make the platform //
  void render() {
    moneyAnimation.display(x, y);
    //rect(x, y, w, h);
  } // end of render

  // make the platform move and update CD vars //
  void move() {
    x += xSpeed;
    if (x > width) {
      x = -w;
    } // end of if statement

    if (x + w < 0) {
      x = width;
    } // end of if statement

    left = x;
    right = x + w;
    top = y;
    bottom = y + h;
  } // end of move


  // how to tell if player collides with plaform//
  boolean collisionDetection(Player tempPlayer) {
    // if the player collides with a platform
    if (tempPlayer.left < right && tempPlayer.right > left && 
      tempPlayer.top < bottom && tempPlayer.bottom > top) {
      tempPlayer.x = x;
      onMP = true;
      return true;
    }
    else{
      return false;
    }
    // if the player is within the water and not hitting a platform
    //else if (tempPlayer.y>=275 && tempPlayer.y <= 480) {
    //  tempPlayer.x = width/2;
    //  tempPlayer.y = height - 40;
    //  tempPlayer.playerLives -= 1;
    //}

    //  if(x+h/4>tempPlayer.x-tempPlayer.w/4 && x-h/4 < tempPlayer.x+h/4 && y+h/4> tempPlayer.y-tempPlayer.w/4 && y-h/4< tempPlayer.y+tempPlayer.w/4 && onMP == false){
    //    //println("hit a log");
    //    onMP = true;
    //    //tempPlayer.x = x;
    //    //tempPlayer.y = y;
    //  }
    //    if(onMP == true && keyPressed == true){
    //      tempPlayer.move();
    //    } else if (onMP == true){
    //      tempPlayer.x = x;
    //      tempPlayer.y = y;
    //    }
    //    if(!(x+h/4>tempPlayer.x-tempPlayer.w/4 && x-h/4 < tempPlayer.x+h/4 && y+h/4> tempPlayer.y-tempPlayer.w/4 && y-h/4< tempPlayer.y+tempPlayer.w/4 && onMP == false)){
    //      onMP=false;
    //    }

    //    if( tempPlayer.x <= 0 || tempPlayer.x >= width){
    //      tempPlayer.x = width/2;
    //      tempPlayer.y = height - 40;
    //      tempPlayer.playerLives -= 1;
    //    }

    //// how to tell if player collides with sea//
    // if (tempPlayer.x == x && tempPlayer.y == y){
    //   tempPlayer.onPlatform = true;
    // } 
    // else{
    //   tempPlayer.onPlatform = false;
    // }

    // if( tempPlayer.y > 225 && tempPlayer.y < 0 && tempPlayer.onPlatform == false){
    //   println("is in water");
    // }
  } // end of collisionDetection
}// end of movingPlatforms
