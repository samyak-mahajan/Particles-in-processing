ArrayList<Particle> p= new ArrayList<Particle>();; 
int n=500;
void setup() {
  size(600,400);
  for (int i=0; i<n; i++) {

    
    p.add(new Particle());
  }
}

void draw() {
  background(0);
  
  for (int j=0;j<n;j++) {
    Particle i=p.get(j);
    i.update();
    p.set(j,i);
    i.display();
    if (i.isDead()) {
      p.set(j,new Particle());
    
    }
  }
  
}
