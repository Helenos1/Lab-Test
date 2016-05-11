Cloud myCloud;

void setup()
{
  
 size(600, 700);
 myCloud = new Cloud();
  
}

void draw()
{
  
 background(0);
 
 myCloud.update();
 myCloud.render();
 
  
}
