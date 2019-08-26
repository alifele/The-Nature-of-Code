Ball ball;
Ball ball2;
PVector location;
PVector speed;
PVector location2;
PVector speed2;


void setup(){
  location = new PVector(width/2, height/2);
  speed = new PVector(2,3.1);
  location2 = new PVector(20,20);
  speed2 = new PVector(-1,3);
  ball = new Ball(location, speed, 98);
  ball2 = new Ball(location2, speed2, 4);
  size(500,500);
}

void draw(){
   background(255);
  ball.move();
  ball2.move();
  ball.hit();
  ball2.hit();
  ball.display();
  ball2.display();

}




class Ball{
  PVector location;
  PVector speed;
  color c;
  
  
  Ball(PVector location_, PVector speed_, color c_){
    
   location = new PVector(location_.x,location_.y);
   speed = new PVector(speed_.x,speed_.y);
   c = c_;
  }
  
  void move(){
   location.add(speed); 
  }
 
  void hit(){
   if(location.x > width || location.x < 0){
     speed.x = speed.x * -1;
   }
   if(location.y > height || location.y < 0){
     speed.y = speed.y * -1;
   }
    
  }
  
  void display(){
   fill(c);
   ellipse(location.x, location.y,12,12);
    
  }
  
  
  
  
}
