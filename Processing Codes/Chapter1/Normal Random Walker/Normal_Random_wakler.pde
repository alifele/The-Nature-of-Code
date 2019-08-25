import java.util.Random;

Random gen;
Walker walker;

 void setup(){
     size(400,400);
  walker = new Walker(width/2, height/2);
  gen = new Random();

  
   
 }
 
 void draw(){
  walker.move();
  walker.display();

  
   
 }
 
 
 
 class Walker{
  float x;
  float y;
  float x1;
  float y1;
  float mean = 5;
  float std = 2;
  
  Walker(float x_, float y_){
    x = x_;
    y = y_;
  }
  
  
  void move(){
   float num = (float) (std * gen.nextGaussian() + mean);
   float toss = random(1);
  x1 = x;
   y1 = y;
   /*x = x + num * tossx;
   y = y + num * tossy;*/
   
  if ( toss > 0 & toss < 0.25){
    x = x + num;
  }
  if ( toss > 0.25 & toss < 0.5){
    x =  x - num;
  }
  if ( toss > 0.5 & toss < 0.75){
    y = y +num;
  }
  if ( toss > 0.75 & toss < 1){
    y = y - num;
  }
   
  }
  
  void display(){
   fill(0);
   point(x1,y1);
   line(x,y,x1,y1);
  }
   
 }
