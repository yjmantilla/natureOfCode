/* Basic Processing(.js) script */ 

  float stepDiv=360*4;
  float k=2*PI/stepDiv;
  float t=0;
  float m=16;
  float frac=m/2;
  float w=1;
  float Twave=5;
  float N=51;
  float leastDim=width;
  float h=1;
  float l=1;
  float p=0;
  float frame=0;
  float cycle=60;
  float dir=1;
  float y;
  
void setup(){
  size(600, 720);
  ellipseMode(CENTER);
}

void draw(){
  background(255);
  y=0;
  
  //fill(random(255), random(255), random(255));
  for(int i =0; i <=m;i++)
  {
  if(i == h && frame == cycle )
  {
  //fill(random(255), random(255), random(255));
  //fill(255,255,255)
  }
  else
  {
  //fill(0,0,0)
  if(frame == cycle)
  {
  //fill(random(255), random(255), random(255));
  }
  }
  ellipse(cos(t*(N+i)/Twave +p)*width/2 + width/2, y,leastDim/frac,leastDim/frac);
  //point(cos(t*(N+i)/Twave +p)*width/2 + width/2, y);
  //p=p+PI/m //what the hell does this line does
  y=y+height/m;
  //color in groups of k, or intercalated
  //or color only one and that color is passef between balls each iteration
  //fill(random(255), random(255), random(255));
 fill(0,0,255);
  }
  //one could actually superimpose two different of this for to see the difference
  
  
  if((h == m && dir ==1) || (h==0 && dir == -1))
  {
    l = l*-1;
    dir=dir*-1;
  }
 
 if(frame==cycle)
 {
   frame=0;
   h=h+l;
   }
   else
   {
   frame++;
   }
 
 
 print(h);
  t+=k;
}
