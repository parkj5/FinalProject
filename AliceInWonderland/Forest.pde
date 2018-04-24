class Forest
{
  PImage FBackground;
  PImage FAlice;
  PImage Star;
  float FBackgroundX=800;
  float FBackgroundXvector=1;
  float FAliceX=100;
  float FAliceXvector=0.4;
  float StarBrightness=255;
  float StarDelta=-1;
  Lights[]Shine= new Lights[10];
  
  
  Forest()
  {
    FBackground= loadImage("Forestbackground.jpg");
    FBackground.resize(1600,800);
    FAlice=loadImage("ForestAlice.gif");
    FAlice.resize(100,200);
    Star=loadImage("Star.png");
    Star.resize(400,400);
    for (int i=0; i<10; i++)
    {
      Shine[i]= new Lights(random(0,800), random(600, 1000), random(1, 2));
    }
  }
  
  void Render()
  {
    image(FBackground,FBackgroundX,400);
    image(FAlice,FAliceX,600);
    for(int i=0; i<10; i++)
      {
        Shine[i].Render();
      }
    tint(255,0,0,StarBrightness);
    image(Star,100,100);
    tint(255,0,0,255-StarBrightness);
    image(Star,130,280);
    tint(255,255,0,StarBrightness);
    image(Star,270,180);
    tint(255,255,0,255-StarBrightness);
    image(Star,300,240);
    tint(0,255,0,StarBrightness);
    image(Star,400,80);
    tint(0,255,0,255-StarBrightness);
    image(Star,460,150);
    tint(0,0,255, StarBrightness);
    image(Star,600,150);
    tint(0,0,255,255-StarBrightness);
    image(Star,620,300);
    tint(255,0,255,StarBrightness);
    image(Star,700,200);
    tint(255,0,255,255-StarBrightness);
    image(Star,750,310);
    tint(255,255);
    
    StarBrightness+=StarDelta;
    if(StarBrightness>255)
    {
      StarDelta*=-1;
    }
    if(StarBrightness<0)
    {
      StarDelta*=-1;
    }
    
    if(keyPressed)
    {
      if(key=='d')
      {
        FAliceX=FAliceX+FAliceXvector;
        FBackgroundX= FBackgroundX-FBackgroundXvector;
      }
      if(key=='a')
      {
      FAliceX=FAliceX-FAliceXvector;
      }
    }
    
    if(FBackgroundX<2)
    {
      FBackgroundXvector=0;
      FAliceXvector=0.8;
      if(FAliceX>700)
      {
        Scene=6;
      }
    }
    if(FAliceX<0)
    {
      FAliceX=0;
    }
      
   
  }
}