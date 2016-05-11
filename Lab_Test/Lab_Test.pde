Cloud myCloud;
Aeroplane myAeroplane;
BG myBG;

boolean space = false;  // plane 

  

void setup()
{
  
 size(600, 700);
 
 myCloud = new Cloud();
 myAeroplane = new Aeroplane();
 myBG = new BG();
  
}


void keyPressed()
{
 
  if (keyCode == ' ')
  {
    
    space = true;
    
  }

}

void keyReleased()
{
  
  if (keyCode == ' ')
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
  
}
