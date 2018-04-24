class Pedal
{ 
  PImage Pedals;
  float PX;
  float PY;
  float PXspeed;
  float PYspeed;

  Pedal()
  {
    Pedals= loadImage("Cherryblossom.png");
    Pedals.resize(500, 300);
    PX=-100;
    PY=100;
    PXspeed=10;
    PYspeed=9;
  }

  Pedal(float _PX, float _PY, float _PXspeed, float _PYspeed)
  {
    Pedals= loadImage("Cherryblossom.png");
    Pedals.resize(500, 300);
    PX=_PX;
    PY=_PY;
    PXspeed=_PXspeed;
    PYspeed=_PYspeed;
  }

  void Render()
  {
    
    image(Pedals, PX, PY);
    
    
  }
  
  
  
}