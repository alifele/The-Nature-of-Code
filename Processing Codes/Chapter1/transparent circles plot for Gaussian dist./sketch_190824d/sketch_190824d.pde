import java.util.Random;
double std = 30;
  double mean = 250;
double num;
Random gen;

void setup(){
  gen = new Random();
  size(500,50);
}

void draw(){
  noStroke();
  num = std * gen.nextGaussian() + mean;
  fill(0,10);
  ellipse((float)num, 25, 15,15);
  
  
}
