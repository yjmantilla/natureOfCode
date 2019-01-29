/* Basic Processing(.js) script */ 

  float x;
  float y;
  float k=-1;
  float m=17;

void setup(){
  size(1280, 720);
  x=width;
  y=height;
}

void draw(){
  background(164);
  rectMode(CENTER);
  for(float i =2 ; i < m; i+=0.1)
  {
    fill(random(255), random(255), random(255));
    
    
    rect(width/i, height/i, x, y);
  }
  
  x+=k;
  y+=k;
  
  if(abs(x)>width || abs(y)>height)
  {
    k=k*-1;
  }
  
  
  
}
