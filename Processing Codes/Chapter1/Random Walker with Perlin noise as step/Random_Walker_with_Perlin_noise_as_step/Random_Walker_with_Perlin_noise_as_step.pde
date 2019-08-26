Walker walker;
float t=0;
void setup(){
  size(400,400);
  walker = new Walker(width/2, height/2);
  
}

void draw(){
 t = t + 0.005;
  walker.move(t);
  walker.display();
 
}


class Walker{
 float x1;
 float y1;
 float x2;
 float y2;
 
 Walker(float x_, float y_){
   x1 = x_;
   y1 = y_;  
 }
 
 void move(float t){
   float rnd = random(1);
   float step = 10*noise(t);
    x2 = x1;
    y2 = y1;
   
   if(rnd >0 & rnd <0.25){
     x1 = x1 - step;
   }
   if(rnd >0.25 & rnd <0.5){
     x1 = x1 + step;
   }
   if(rnd >0.5 & rnd <0.75){
     y1 = y1 - step;
   }
   if(rnd >0.75 & rnd < 1){
     y1 = y1 + step;
   }
 }
 void display(){
  fill(0);
  line(x1,y1,x2,y2);
 }
  
  
}
