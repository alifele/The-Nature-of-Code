import java.util.Random;

Random gen;

void setup(){
  size(640, 320);
  gen = new Random();
  
}

void draw(){
  float num = (float) gen.nextGaussian();
  ellipse(width/2, height/2,num*50, num*50);
  
}
