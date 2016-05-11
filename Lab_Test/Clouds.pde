class Cloud
{
  
  float cloudSpeed;
  
  float radiusW;
  float radiusH;
  float x;
  float y;
  
  float radiusWL;
  float radiusHL;

  float radiusWR;
  float radiusHR;

  Cloud() // constructor
  {
    
    radiusW = 100;
    radiusH = 60;
    x = width + 120;
    y = height * 0.1;
    
    radiusWL = 80;
    radiusHL = 40;

    radiusWR = 80;
    radiusHR = 40;
    
    cloudSpeed = random(1, 5);
    
  }
  
  void update()
  {
    
    x = x - cloudSpeed;
    
    if( (x + 40) < (0 - radiusWR / 2))
    {
      
      x = width + radiusWL;
      cloudSpeed = random(1,5);
      
    }
    
  }
  
  void render()
  {
    
    fill(255);
    stroke(255);
    ellipse(x, y, radiusW, radiusH); //middle cloud
    ellipse(x - 40, y, radiusWL, radiusHL); // left cloud
    ellipse(x + 40, y, radiusWR, radiusHR); // right cloud
    
  }
  
}
