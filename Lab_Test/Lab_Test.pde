Cloud myCloud;
Aeroplane myAeroplane;
BG myBG;
Polly myPolly;

boolean space = false;  // plane 

ArrayList < Cloud > clouds = new ArrayList < Cloud > ();

void setup()
{
  
 size(600, 700);
 
 myCloud = new Cloud();
 myAeroplane = new Aeroplane();
 myBG = new BG();
 myPolly = new Polly();
  
}


void keyPressed()
{
 
  if (key == ' ')
  {
    
    space = true;
    
  }

}

void keyReleased()
{
  
  if (key == ' ')
  {
    
    space = false;
    
  }
  
}

void draw()
{
  
 background(0);
 
 myBG.update();
 myBG.render();
 
 myCloud.update();
 myCloud.render();
 
 myAeroplane.update();
 myAeroplane.render();
 
 myPolly.update();
 myPolly.render();
 
   for(int i = 0 ; i < clouds.size() ; i ++)
  {
    
    clouds.get(i).update();
    clouds.get(i).render();
    
  }
  
}
