Cloud myCloud;
Aeroplane myAeroplane;


void setup()
{
  
 size(600, 700);
 myCloud = new Cloud();
 myAeroplane = new Aeroplane();
  
}

void draw()
{
  
 background(0);
 
 myCloud.update();
 myCloud.render();
 
 myAeroplane.update();
 myAeroplane.render();
  
}
