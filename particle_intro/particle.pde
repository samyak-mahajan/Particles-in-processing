class Particle {
  float r=2;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float g=0.01;
  Particle() {
    location=new PVector(random(width), 0);
    acceleration=new PVector(0, g);
    velocity=new PVector(random(-1, 1), random(-2, 2));
  }
  boolean isDead(){
    if(location.y>height){
     return true;
    }
    return false;
  }
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
  }
  void display() {
    float fade=map(location.y,0,height,255,0);
    fill(255, fade);
    stroke(100,fade);
    ellipse(location.x,location.y,2*r,2*r);
  }
}
