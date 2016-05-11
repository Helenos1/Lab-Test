class BG
{
  // sky
  
  float skyX;
  float skyY;
  
  // ground
  
  float grassX;
  float grassY;
  
  BG()
  {
    
    skyX = width / 2;
    skyY = 175;
    
    grassX = width / 2;
    grassY = height - 175;
 
    
  }
  
  void update()
  {
    
    
    
  }
  
  void render()
  {
    
    // ground
    fill(100,255,100);
    stroke(100,255,100);
    rect(grassX, grassY, width, height / 2);
    
    // sky 
    fill(20, 150, 255);
    stroke(20, 150, 255);
    rect(skyX, skyY, width, height / 2);
    
  }
  
  
}
