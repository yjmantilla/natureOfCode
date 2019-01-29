/* Basic Processing(.js) script */ 

  float k=PI/360;
  float x=0;
  float m=16;
  float w=1;
  float p;
  float y;
  
void setup(){
  size(600, 800);
}

void draw(){
  background(164);
  ellipseMode(CENTER);
  y=0;
  p=0;
  
  for(int i =0; i <=m;i++)
  {
  //ellipse(cos(x)width/2 + width/2, /*sin(HALF_PI+x)/height/2, width/16, height/16);
  //ellipse(cos(x+p)*width/2 + width/2, y, width/16, height/16);
  ellipse(cos(x/(i+1)+p)*width/2 + width/2, y, width/16, height/16);
  p=p+PI/m;
  y=y+height/m;
  
  
  }
  
  x+=k;
}
