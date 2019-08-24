Walker walker;

void setup(){
  size(100,100);
  walker = new Walker(width/2, height/2);
}

void draw(){
  walker.move();
  walker.display();
  
}


class Walker{
 color c;
 float x;
 float y;
 float xstep;
 float ystep;
 
 Walker(float x_,float y_){
  x = x_;
  y = y_;
 }
 
 void move(){
   float xs = (x - mouseX)/500; // negative -> right, positive -> left
   float ys = (y - mouseY)/500; // negative -> above, postive -> below
   
 float toss = random(1);
  if (toss >0 & toss < 0.25){  // right
    x = x + 1 - xs;
  }
  if (toss >0.25 & toss < 0.5){  //left
    x = x - 1 + xs;
  }
  if (toss >0.5 & toss < 0.75){  //up
    y = y + 1 - ys;
  }
   if (toss >0.75 & toss < 1){    //down
    y = y - 1 + ys;
  } 
   
   
 }
 
 void display(){
   stroke(0);
   fill(30);
   rect(x,y,1,1);
   
 }
 
 
 
 
}
