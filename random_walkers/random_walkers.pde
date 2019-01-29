/* Basic Processing(.js) script */ 
int numberOfWalkers = 10000;
ArrayList<Walker> walkers = new ArrayList<Walker>();

void setup(){
  size(1280, 720);
 for(int i=0; i < numberOfWalkers; i++)
 {
   walkers.add(new Walker(int(random(width)),int(random(height)),randomColor()));
 }
 //walkers.add(new Walker(width/2,height/2,int(random(255))));//no white
 //w = new Walker(width/2,height/2,int(random(255)));
  background(0);
}
void draw(){
  
  for(int i=0; i < numberOfWalkers; i++)
 {
   Walker w = (Walker) walkers.get(i);
  w.step();
  w.display();
 }
  
}

class Walker
{
  int xPos;
  int yPos;
  color trailColor;
  
  Walker(int x, int y, color trailColor)
   {
      this.xPos=x;
      this.yPos=y;
      this.trailColor=trailColor;
    }
    
    void display()
    {
      stroke(this.trailColor);
      point(this.xPos,this.yPos);
    }
    
    void step()
    {
      
      this.xPos += (random(-1,2));//upper limit is not included
      this.yPos += (random(-1,2));//playing with theses limits gives bias
      //other way
      /*
      this.xPos += randomSign()*random01();
      this.yPos += randomSign()*random01();
      */
      /*int choice = int(random(4));
      
      if(choice==0){this.xPos++;}
      else if (choice==1 ){this.xPos--;}
      else if (choice==2 ){this.yPos++;}
      else if (choice==3 ){this.yPos--;}*/
    }
}

color randomColor()
{
  return color(int(random(256)),int(random(256)),int(random(256)));
}

color randomGrey()
{
  return color(int(random(256)));
}

int randomSign()
{
  if (int (random(2))==0) {return 1;}
  else {return -1;}
}

int random01()
{
  return int(random(2));
}
