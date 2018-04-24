class Lights
{
  PImage Light;
  float LX;
  float LY;
  float LYspeed;
  float LightTransparent;
  
  Lights()
  {
    Light=loadImage("Light.png");
    Light.resize(100,100);
    LX=400;
    LY=700;
    LYspeed=2;
  }
  
  Lights(float _LX, float _LY,float _LYspeed)
  {
    Light=loadImage("Light.png");
    Light.resize(100,100);
    LX= _LX;
    LY=_LY;
    LYspeed=_LYspeed;
  }
  void Render()
  {
    tint(255,LightTransparent);
    image(Light,LX, LY);
    LY= LY- LYspeed;
    LightTransparent= LY-400;
    if(LY<200)
    {
      LX=random(0,800);
      LY=random(600,1200);
      LYspeed=random(1,2);
    }
    tint(255,255);
    
    
  }
}