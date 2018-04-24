class Entry
{
  Hole h;
  PImage EBackground;
  PImage EAlice;
  float EAliceX= 400;
  float EAliceY= 700;
  float EAliceXspeed=0;
  float EAliceYspeed=0;
  
  Pedal[]Flower=new Pedal[20];
  Entry()
  {
    EBackground= loadImage("Holebackground.png");
    EBackground.resize(800,800);
    EAlice= loadImage("AliceEntry.gif");
    EAlice.resize(150,100);
    
    
    for (int i=0; i<20; i++)
    {
      Flower[i]= new Pedal(random(0,800), random(-300, -100), random(10, 15), random(8, 10));
    }
  }
  
  void Render()
  {
    background(0);
    image(EBackground,400,400);
    image(EAlice, EAliceX,EAliceY);
 
    
      for (int i=0; i<20; i++)
      { 

         if (Flower[i].PY>1100|| Flower[i].PX>1100 || Flower[i].PX<-300)
         {
          Flower[i].PX=random(0,800);
          Flower[i].PY=random(-300, -100);
          Flower[i].PXspeed=0;
          Flower[i].PYspeed=0;
         }
         
         if(keyPressed==true)
         {
           EAliceXspeed=0.3;
           EAliceYspeed=0.3;
           if(key=='a' || key=='A')
           {
             EAliceX=EAliceX-EAliceXspeed;
             if(Flower[i].PYspeed==0)
             {
               Flower[i].PYspeed= random(8,10);
             }
             if(Flower[i].PXspeed==0)
             {
               Flower[i].PXspeed=random(10, 15);
             }
           }
           if(key=='d' || key=='D')
           {
             EAliceX=EAliceX+EAliceXspeed;
             if(Flower[i].PYspeed==0)
             {
               Flower[i].PYspeed= random(8,10);
             }
             if(Flower[i].PXspeed==0)
             {
               Flower[i].PXspeed=random(10, 15);
             }
             
           }
           if(key=='w' || key=='W')
           {
             EAliceY=EAliceY-EAliceYspeed;
             if(Flower[i].PYspeed==0)
             {
               Flower[i].PYspeed= random(8,10);
             }
           } 
           if(key=='s')
           {
             EAliceY=EAliceY+EAliceYspeed;
           }
         }
         if(keyPressed==false)
         {
           EAliceXspeed=0;
           EAliceYspeed=0;
         }
         
         if(key=='a')
         {
           Flower[i].PX=Flower[i].PX + Flower[i].PXspeed;
           
         }
         if(key=='d')
         {
           Flower[i].PX=Flower[i].PX - Flower[i].PXspeed;
         }
         Flower[i].Render();Flower[i].Render();
         Flower[i].PY=Flower[i].PY + Flower[i].PYspeed;
      }
      if(EAliceX<0)
      {
        EAliceX=0;
      }
      if(EAliceX>800)
      {
        EAliceX=800;
      }
      if(EAliceY>800)
      {
        EAliceY=800;
      }
      if(dist(390,285,EAliceX,EAliceY)<50)
      {
        Scene=2;
      }
     
  }
}