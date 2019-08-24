Walker walker;
Walker walker2;
void setup(){
  size(300,300);
  walker = new Walker(width/2,height/2,255);
  walker2 = new Walker(width/2, height/2,255);
  background(255);
  
  
}

void draw(){

  walker.move();
  walker.display();
  walker2.move();
  walker2.display();
}

class Walker{
 
  color c;
  float x;
  float y;
  
  Walker(float x_, float y_,color c_){
    x = x_;
    y = y_;
    c = c_;
  }
  
  void move(){
   float toss = random(1);
    if (toss > 0 & toss <0.25){
     x = x + 1; 
    }
    if (toss > 0.25& toss <0.5){
     x = x - 1; 
    }
    if (toss > 0.5 & toss <0.75){
     y = y + 1; 
    }
    if (toss > 0.75 & toss <1){
     y = y - 1; 
    }
    
  }
  
  void display(){
    stroke(5);
    fill(100,0,0);
    point(x,y);
    
  }
  
  
}
