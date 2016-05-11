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
  float x;
  
  float aSpeed;
  
  //float windowX;
  
  float boxY;
  float boxW, boxH;
  float bSpeed;
  
  Aeroplane()
  {
    // main body fields
    x1 = 50;
    y1 = 90;
    x2 = x1;     
    y2 = 60;
    x3 = x1 + 120;
    y3 = 60;
    x4 = x1 + 140;
    y4 = 90;
    
    // wing fields
    wingX = x1 + 60;
    wingY = y2 + 15;
    w = 25;
    h = 90;
    
    boxY = 75;
    boxW = 20;
    boxH = 20;
    bSpeed = 5;
    
    aSpeed = random(1,5);
    
   x = 70;
    
    //windowX = 60;
    
  }
  
  
  void update()
  {
    
    x1 = x1 + aSpeed; // movement
    
    if( (x1 + 40) > (width + x3)) // if the plane leaves the screen, restart it
    { 
      
      x1 = 0 - x3;
      aSpeed = random(1,5);
      
    }
    
    if(space == true)
    {
      
      boxY += 6;
      
    }
    
    if(boxY >= height * 0.8)
    {
      
     boxY = height * 0.8;
     bSpeed = 0;
      
    }

  }
  
  void render()
  {
    
    // present
    fill(255, 10, 10);
    stroke(255, 10, 10);
    rect(x1 + 40, boxY, boxW, boxH);  // present
    
    //plane
    stroke(180);
    fill(180);
    quad(x1, y1, x1, y2, x1 + 120, y3, x1 + 140, y4);
    rectMode(CENTER);
    rect(x1 + 60, wingY, w, h);
    triangle(x1, y2, x1 + 20, y2, x1, y2 - 20);  // left point, right point, top point
    
    //windows
    for(float x1 = 60; x1 <= 180; x1 += 30);  // can't get it to work..
    {
      
      fill(255, 255, 40);
      stroke(255, 255, 40);
      
      // since the for loop didn't work I had to draw each window
      rect(x1 + 20, y2 + 15, 16, 22);
      rect(x1 + 48, y2 + 15, 16, 22);
      rect(x1 + 77, y2 + 15, 16, 22);
      rect(x1 + 105, y2 + 15, 16, 22);
      
    }
    
    

    
    
  }
  
}
