Cloud myCloud;
Aeroplane myAeroplane;
BG myBG;

boolean space = false;  // plane 

ArrayList < Cloud > clouds = new ArrayList < Cloud > ();

void setup()
{
  
 size(600, 700);
 
 myCloud = new Cloud();
 myAeroplane = new Aeroplane();
 myBG = new BG();
  
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
 
   for(int i = 0 ; i < clouds.size() ; i ++)
  {
    
    clouds.get(i).update();
    clouds.get(i).render();
    
  }
  
}
