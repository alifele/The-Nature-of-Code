





Car myCar1;
Car myCar2;

void setup(){
 size(200,200);
 myCar1 = new Car(color(255,0,0),0,100,2);
 myCar2 = new Car(color(0,0,225),0,10,1);
}

void draw(){
 background(255);
 myCar1.drive();
 myCar1.display();
 myCar2.drive();
 myCar2.display();
 
}





class Car{
 color c; 
 float xpos ;
 float ypos ;
 float xspeed;
 
 Car(color c_, float xpos_, float ypos_, float xspeed_){
  c = c_;
  xpos = xpos_;
  ypos = ypos_;
  xspeed = xspeed_;
 }
 
 void display(){
  stroke(0);
  fill(c);
  rectMode(CENTER);
  rect(xpos, ypos, 20, 10);
 }
 
 void drive(){
  xpos = xpos + xspeed;
  if(xpos > width){
    xpos = 0;
  }
 }
}
