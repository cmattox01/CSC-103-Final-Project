// sound //
import processing.sound.*;
SoundFile jumpSound;

// player vars //
Player p1;
PImage[] deerSprite = new PImage[1];
Animation deerAnimation = new Animation(deerSprite, 0, 0.04);

// first obstacle vars //

int numCB = 10;
campusBus[] cbs = new campusBus[numCB]; 
PImage[] busSprite = new PImage[1];
Animation busAnimation = new Animation(busSprite, 0, 2.3);


// second obstacle vars //

int numMP = 12;
movingPlatforms[] mps = new movingPlatforms[numMP];
PImage[] moneySprite = new PImage[1];
Animation moneyAnimation = new Animation(moneySprite, 0, 3.5);

// third obstacle vars //
int numS = 5;
Students[] stud = new Students[numS];
PImage[] studSprite = new PImage[1];
Animation studentAnimation = new Animation(studSprite, 2, 2);

// background vars //
Background bk0;
Background bk1;
Background bk2;
Background bk3;
Background bk4;

// case vars //
int switchVal;

void setup() {
  size(1200, 750);
  
  // intializing sound //
  jumpSound = new SoundFile(this, "jump.wav");

  // intialize case vars //
  switchVal = 0;

  // intialize background //
  bk0 = new Background();
  bk1 = new Background();
  bk2 = new Background();
  bk3 = new Background();
  bk4 = new Background();

  // intialize player vars //
  p1 = new Player(width/2 - 10, height - 20);
  for (int i = 0; i<deerSprite.length; i++) {
    deerSprite[i] = loadImage("deer" +i+ ".png");
  }
  // intialize obstacle 1 vars //

  /* This is for if you want to make it fancy and have random speeds for each car. 
   You would just need to add spacing between each car to make sure that the cars don't 
   overlap each other.
   
   for(int i = 0; i < cbs.length; i++){
   cbs[i] = new campusBus(random(0,width), height - p1.w*2, 3);
   }
   */

  for (int i = 0; i<busSprite.length; i++) {
    busSprite[i] = loadImage("campusBus" +i+ ".png");
  }

  // row 1 of cars //

  /* Working fine, but there's a big space from where the cars reset */
  campusBus cb1 = new campusBus(0, height - 80, 3);
  campusBus cb2 = new campusBus(200, height - 80, 3);
  campusBus cb3 = new campusBus(400, height - 80, 3);
  campusBus cb4 = new campusBus(700, height - 80, 3);

  cbs[0] = cb1;
  cbs[1] = cb2;
  cbs[2] = cb3;
  cbs[3] = cb4;

  // row 2 of cars //

  /* These need to go the opposite direction */
  /* Goes fine the first time...but doesn't reset */
  campusBus cb5 = new campusBus(width, height - 135, 4);
  campusBus cb6 = new campusBus(width - 200, height - 135, 4);
  campusBus cb7 = new campusBus(width - 500, height - 135, 4);

  cbs[4] = cb5;
  cbs[5] = cb6;
  cbs[6] = cb7;

  // row 3 of cars //

  /* Goes the same direction as row 1 */
  campusBus cb8 = new campusBus(0, height - 190, 2.5);
  campusBus cb9 = new campusBus(200, height - 190, 2.5);
  campusBus cb10 = new campusBus(500, height - 190, 2.5);

  cbs[7] = cb8;
  cbs[8] = cb9;
  cbs[9] = cb10;

  // intialize obstacle 2 vars //

  for (int i = 0; i<moneySprite.length; i++) {
    moneySprite[i] = loadImage("dollar" +i+ ".png");
  }

  // row 1 of logs //
  movingPlatforms mp1 = new movingPlatforms(100, 460, 4);
  movingPlatforms mp2 = new movingPlatforms(400, 460, 4);
  movingPlatforms mp3 = new movingPlatforms(700, 460, 4);

  mps[0] = mp1;
  mps[1] = mp2;
  mps[2] = mp3;

  // row 2 of logs //

  movingPlatforms mp4 = new movingPlatforms(0, 420, -3);
  movingPlatforms mp5 = new movingPlatforms(300, 420, -3);
  movingPlatforms mp6 = new movingPlatforms(500, 420, -3);

  mps[3] = mp4;
  mps[4] = mp5;
  mps[5] = mp6;

  // row 3 of logs //

  movingPlatforms mp7 = new movingPlatforms(100, 380, 5);
  movingPlatforms mp8 = new movingPlatforms(400, 380, 5);
  movingPlatforms mp9 = new movingPlatforms(700, 380, 5);

  mps[6] = mp7;
  mps[7] = mp8;
  mps[8] = mp9;

  // row 4 of logs //

  movingPlatforms mp10 = new movingPlatforms(0, 340, -5);
  movingPlatforms mp11 = new movingPlatforms(300, 340, -5);
  movingPlatforms mp12 = new movingPlatforms(600, 340, -5);

  mps[9] = mp10;
  mps[10] = mp11;
  mps[11] = mp12;


  // intializing obstacle 3 vars //

  for (int i = 0; i<studSprite.length; i++) {
    studSprite[i] = loadImage("student" +i+ ".png");
  }

  Students stud1 = new Students();
  Students stud2 = new Students();
  Students stud3 = new Students();
  Students stud4 = new Students();
  Students stud5 = new Students();

  stud[0] = stud1;
  stud[1] = stud2;
  stud[2] = stud3;
  stud[3] = stud4;
  stud[4] = stud5;
} // end of setup

void draw() {
  rectMode(CORNER);
  // case 0 aka start screen //
  switch(switchVal) {
  case 0 :
    //  println("zero");
    bk0.renderStart();
    break;
    // case 1 aka game rules //
  case 1:
    //  println("one");
    bk1.renderRules();
    break;

    //case 2 aka game play //
  case 2:
    println("two");

    // draw the background //
    background (80);
    bk2.renderRoad();
    bk2.renderSea();
    bk2.renderGrass();
    bk2.renderSafety();


    rectMode(CENTER);
    // draw obstacle 1 (cars) //
    for (int i = 0; i < cbs.length; i++) {
      cbs[i].render();
      cbs[i].move();
      cbs[i].collisionDetection(p1);
    }


    // draw obstacle 2 (logs)//
    boolean playerOnPlatform = false;
    for (int i = 0; i < mps.length; i++) {
      mps[i].render();
      mps[i].move();
      if (mps[i].collisionDetection(p1) == true) {
        playerOnPlatform = true;
      }
    }

    // if not on a platform
    if (playerOnPlatform == false) {
      // if in the water
      if (p1.y>=350 && p1.y <= 480) {
        p1.x = width/2;
        p1.y = height - 40;
        p1.playerLives -= 1;
      }
    }

    // draw obstacle 3 (students throwing books)//
    for (int i = 0; i < stud.length; i++) {
      stud[i].render();
      stud[i].move(); 
      stud[i].timer();
      stud[i].collisionDetection(p1);
    }

    // draw player //
    p1.render();
    p1.move();

    // end of case 2 //
    if (p1.playerLives == 0) {
      switchVal = 3;
    } else if (p1.y <= 0) {
      switchVal = 4;
    }
    //rectMode(CORNER);
    break;

    // case 3 aka game over //
  case 3:
    //rectMode(CORNER);
    //println("three");
    bk3.renderGameOver();
    break;

    // case 4 aka winner screen //
  case 4:
    println("four");
    bk4.renderWin();
    break;
  }// end of switch
} // end of draw

// make player move with a,s,d,w //
void keyPressed() {
  // make the player move //
  p1.move();
  if(jumpSound.isPlaying()){
    jumpSound.stop();
  } // end of if statement
  jumpSound.play();
} // end of keyPressed

void mousePressed() {
  if (switchVal == 0 || switchVal == 1) {
    switchVal += 1;
  }
  if (switchVal == 3) {
    p1.playerLives = 3;
    switchVal = 2;
  }
  if (switchVal == 4) {
    p1.playerLives = 3;
    p1.y = height - 20;
    switchVal = 2;
  }
} // end of mousePressed
