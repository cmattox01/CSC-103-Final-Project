class Students{
  
  // use bouncing ball method for students //
  
  float x;
  float y;
  float w;
  float h;
  
  float xSpeed;
  float ySpeed;
  
  float left;
  float right;
  float top;
  float bottom;
  
  int endTime;
  int startTime;
  float interval;
  
  Students(){
    x = random(50,width-50);
    y = random(100,210);
    w = 20;
    h = 20;
    
    xSpeed = random(-2,5);
    ySpeed = random(-2,5);
    
    left = x;
    right = x + w;
    top = y;
    bottom = y + w;
    
   endTime = millis();
   startTime = millis();
   interval = random(2000,4000);
    
  } // end of constructor
  
  void render(){
     //fill(255);
     //rect(x,y,w,h);
     studentAnimation.display(x,y);
   } // end of render
   
   void move(){
     x += xSpeed;
     y+= ySpeed;
     
    if(y > 225 ){
     ySpeed = ySpeed * -1;
    }
  
    if(y < 50){
     ySpeed = ySpeed * -1;
    }
 
    if(x > width){
      xSpeed = xSpeed * -1;
    }
  
    if(x<0){
     xSpeed = xSpeed * -1;
    }
    
    left = x;
    right = x + w;
    top = y;
    bottom = y + w;
   } //end of move
   
   void timer(){
     endTime = millis();
     if(endTime - startTime > interval){
       xSpeed = random(-10,10);
       ySpeed = random(-10,10);
       startTime = millis();
       interval = random(1000,3000);
       //println("timer triggered");
     } // end of if statement
   } // end of timer
  
    void collisionDetection(Player tempPlayer) {
    if (tempPlayer.left < right && tempPlayer.right > left && 
      tempPlayer.top < bottom && tempPlayer.bottom > top) {
      println("hit a student");
      tempPlayer.x = width/2;
      tempPlayer.y = height - 40;
      tempPlayer.playerLives -= 1;
    }
  } // end of collisionDetection
  
  
  
  
} // end of Students class
