class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  int red;
  int green;
  int blue;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    
    red = int(random(1, 255));
    green = int(random(1, 255));
    blue = int(random(1, 255));
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill (red,green,blue);
    ellipse(position.x, position.y, 10, 10);
  }
}
