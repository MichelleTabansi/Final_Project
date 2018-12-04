PImage bird;
PImage manBird;
 float otherX = 10;
 float otherY = 0;
 float rot = 0.1;
void setup(){
 size (1284,588);
 imageMode(CENTER);
 bird = loadImage("please.png");
 manBird = createImage(295,234,ARGB);
 background(255,0,0);
}

void draw(){
  background(0,255,0);
  translate(otherX,0);
  rect(500,0,40,588);
    bird(00, 160,0);
    otherX+=10;
    rot+=0.1;
    
}

void bird(float xHap, float yHap, float rotate){
     //  loadPixels();
     manBird.loadPixels();
       bird.loadPixels();
   for(int y=0;y<bird.height; y++){
     for(int x=0;x<bird.width;x++){

          int loc = x+y*bird.width;
       
          float r = red(bird.pixels[loc]);
          float g = green(bird.pixels[loc]);
          float b = blue(bird.pixels[loc]);
       
       if(color(r,g,b)<=color(100)){
      //set(x,y,color(r,g,b));
      manBird.pixels[loc] = color(r,g,b);
       
       }
     }
   }  
   
    manBird.updatePixels();
    pushMatrix();
    translate(500,0);
    rotate(rotate);
   image(manBird,xHap,yHap,500,500);
   popMatrix();
}
