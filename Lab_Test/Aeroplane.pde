class Aeroplane
{
  // main body
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  float x4;
  float y4;
  
  // wings
  
  float wingX;
  float wingY;
  float w;
  float h;
  //float x;
  
  float aSpeed;
  
  //float windowX;
  
  Aeroplane()
  {
    
    x1 = 50;
    y1 = 90;
    x2 = x1;     
    y2 = 60;
    x3 = x1 + 120;
    y3 = 60;
    x4 = x1 + 140;
    y4 = 90;
    
    wingX = x1 + 60;
    wingY = y2 + 15;
    w = 25;
    h = 90;
    
    aSpeed = random(1,5);
    
   //x = 70;
    
    //windowX = 60;
    
  }
  
  
  void update()
  {
    
    x1 = x1 + aSpeed;
    
    if( (x1 + 40) > (width + x3))
    {
      
      x1 = 0 - x3;
      aSpeed = random(1,5);
      
    }

  }
  
  void render()
  {
    
    stroke(180);
    fill(180);
    quad(x1, y1, x1, y2, x1 + 120, y3, x1 + 140, y4);
    rectMode(CENTER);
    rect(x1 + 60, wingY, w, h);
    triangle(x1, y2, x1 + 20, y2, x1, y2 - 20);  // left point, right point, top point
    
       /*for(float x = 60; x <= 180; x += 30);
    {
      
      fill(255, 255, 0);
      rect(x, y2 + 15, 20, 28);
      
    }*/
    
    

    
    
  }
  
}
