class Animation{
  PImage[] images;
   float speed;
   float scale;
   
   float index;
   boolean isAnimating;
   
  Animation(PImage[] tempImages, float tempSpeed, float tempScale){
    images = tempImages;
    speed = tempSpeed;
    scale = tempScale;
    
    index = 0;
    isAnimating = false;
  } // end of constructor
  
  void next(){
    println(index);
    index += speed;
    
    if (index >= images.length){
      index = 0;
      isAnimating = false;}
  }
  
  void display(float x , float y){
    imageMode(CENTER);
    if(isAnimating){
      int imageIndex = int(index);
      PImage img = images[imageIndex];
      image (img, x, y, img.width*scale, img.height*scale);
      next();
    } 
 
    else{
      PImage img = images[0];
      image(img, x, y, img.width*scale, img.height*scale);
    }
  }// end of display
  
  
} // end of Animation class
