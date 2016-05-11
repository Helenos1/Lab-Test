class Polly
{
   // body
  float bodyX;
  float bodyY;
  float bWidth;
  float bHeight;
  
   // head
  float radius;
  
  //arms
  float armW;
  float armH;
  
  //legs
  float legLW;
  float legLH;
  
  float legRW;
  float legRH;
  
 
   Polly()
   {
  
    //body
    bodyX = 30;
    bodyY = 600;
    bWidth = 15;
    bHeight = 30;
    
    //head
    radius = 15;
    
    //arms
    armW = 35;
    armH = 2;
    
    //legs
    legLW = 2;
    legLH = 35;
  
    legRW = 2;
    legRH = 35;
   }

  void update()
  {
  
   
  
  }

  void render()
  {
  
   fill(150,150,255);
   stroke(150,150,255);
   rect(bodyX, bodyY, bWidth, bHeight); // body
   
   ellipse(bodyX, bodyY - 27, radius, radius); // head
   
   rect(bodyX, bodyY - 5, armW, armH); // arms
   
   rect(bodyX - 3, bodyY + 25, legLW, legLH);   // left leg
   rect(bodyX + 3, bodyY + 25, legRW, legRH);   // right leg
  
  }
  
  
  
}
