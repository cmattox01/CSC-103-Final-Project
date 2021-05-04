class Background{
  PImage start;
  PImage rules;
  PImage gameOver;
  PImage win;
  
  Background(){
    start  = loadImage("front.png");
    rules = loadImage("gameRules.png");
    gameOver = loadImage("gameOver.png");
    win = loadImage("win.png");
    
    
  } // end of constuctor

////// this is all going to be for case 0 aka start screen //////
  void renderStart(){
    //background(100);
    rect(0,0,width,height);
    image(start,0,0,width,height);
    //textSize(100);
    //text("Deer in Campus Lights", width/2 - 550,height/2);
    //textSize(50);
    //text("Press the mouse to get started", width/2 - 350, height/2 + 100);
  }
  
////// this is all going to be for case 1 aka rule screen //////
 void renderRules(){
   //background(0);
   image(rules,0,0,width,height);
 } // end of renderRules
 
////// this is all going to be for case 2 aka game play //////
  
  // lets try and make lanes for the road //
  void renderRoad(){
    fill(255,0,0);
    line(0,height-115, width, height-115 );
    line(0,height-165, width, height-165);
  } // end of renderRoad
  
  // make the water for the sea of student debt //
  void renderSea(){
    fill(0,0,250);
    rect(0,275,width, 205);
  } // end of renderSea
  
  // make the grass for third obstacle //
  void renderGrass(){
    fill(0,150,0);
    rect(0,50, width, 225);
  } // end of renderGrass
  
  // safety lanes //
  /* these are lanes where the player is safe from dying */
  void renderSafety(){
    fill(150);
    rect(0,height-50,width,80);
    rect(0,480,width,50);
    rect(0,260,width,50);
    rect(0,0,width,50);
  } // end of renderSafety
  
////// this is all going to be for case 3 aka game over screen //////
  void renderGameOver(){
    image(gameOver,width/2,height/2,width,height);
  } // end of renderGameOver
  
////// this is all going to be for case 4 aka win screen //////
  void renderWin(){
    image(win,width/2,height/2,width,height);
  } // end of renderWin
} // end of BackgroundClass
