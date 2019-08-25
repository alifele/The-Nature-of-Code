import java.util.Random;
 Spot spot;
 Random gen;
 
 
 
 void setup(){
   spot = new Spot(30,100);
   gen = new Random();
   size (200,200);
   
 }

void draw(){
 spot.hit();
 spot.display();
 delay(100);
}






class Spot{
  double std;
  double mean ;  
  float x;
  float y;
  int c;
  
  Spot(float std_, float mean_){ 
    mean = mean_;
    std = std_;
  }
  
  void hit(){
 x = (float) (std * gen.nextGaussian() + mean);
 y = (float) (std * gen.nextGaussian() + mean);
  }
  void display(){
    float r = (float) (std/10 * gen.nextGaussian() + mean/10);
    int cr = int(random(255));
    int cg = int(random(255));
    int cb  = int(random(255));
    noStroke();
    
    fill (cr,cg,cb);
    ellipse(x,y,r,r);
  }
 
}
