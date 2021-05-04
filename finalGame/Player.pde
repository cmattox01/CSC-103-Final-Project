class Player {
  
   /* To do: 
     1. potentially add a grid type movement instead */
     
  // create player vars //
   float x;
   float y;
   float w;
   
   int xSpeed;
   int ySpeed;
   
   float left;
   float right;
   float top;
   float bottom;
   
   boolean onPlatform;
   
   int playerLives;
   
   // Player cosnstructor //
   
   /* make sure to initialize ALL vars */
   Player (int tempX, int tempY){
     x = tempX;
     y = tempY;
     w = 20;
     
     xSpeed = 5;
     ySpeed = 5;
     
     left = x;
     right = x + w;
     top = y;
     bottom = y + w;
     
     onPlatform = true;
     
     playerLives = 3;
   } // end of constructor
   
   // this is gunna draw the player //
   void render(){
     //fill(255);
     //square(x,y,w);
     deerAnimation.display(x,y);
   } // end of render
   
   // this is gunna move the player //
   
   /* should I do the grid system like dan shiffman did ?? */
   void move(){
     if(keyPressed){
       if( key == 'a' || key == 'A'){
         x -= xSpeed;
       }
     } // end of if statement
     
     if(keyPressed){
       if(key == 'd' || key == 'D'){
         x += xSpeed;
       }
     } // end of if statement
     
     if(keyPressed){
       if(key == 'w' || key == 'W'){
         y -= ySpeed;
        }
      } // end of if statement
      
      if(keyPressed){
        if(key == 's' || key == 'S'){
          y += ySpeed;
        }
      } // end of if statement
      
      left = x;
      right = x + w;
      top = y;
      bottom = y + w;
   } // end of move 
   
} // end of Player
