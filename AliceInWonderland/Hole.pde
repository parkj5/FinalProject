class Hole
{
  int FBackgroundY1= 400;
  int FBackgroundY2= 1200;
  int FBackgroundYspeed= 15;
  float HAliceX= 400;
  float HAliceY= 400;
  float HAliceYspeed=0;
  float BookX=400;
  float BookY=1000;
  float Book1X=300;
  float Book1Y=200;
  float ChairAX=200;
  float ChairAY=100;
  float ChairAYspeed=1;
  float ChairBX=600;
  float ChairBY=700;
  float ChairBYspeed=-1.2;
  float ClockX=200;
  float ClockY=650;
  float ClockYspeed=2;
  float PianoX=200;
  float PianoY=-200;
  int ColorR=0;
  int ColorG=255;
  int Lifespan=700;
  float HBrightness=255; 
  float HDelta=-0.02;


  
  PImage Fallingbackground;
  PImage HAlice;
  PImage Book;
  PImage Book1;
  PImage Chair;
  PImage Clock;
  PImage Piano;
  
  
  Hole()
  {
    Fallingbackground=loadImage("Fallingbackground.jpg");
    Fallingbackground.resize(800,800);
    HAlice=loadImage("FallingAlice.png");
    HAlice.resize(200,200);
    Book= loadImage("Book.png");
    Book.resize(100,50);
    Book1= loadImage("Book1.png");
    Book1.resize(80,80);
    Chair=loadImage("Chair.png");
    Chair.resize(120,160);
    Clock=loadImage("Clock.png");
    Clock.resize(100,100);
    Piano= loadImage("Piano.png");
    Piano.resize(300,300);
    
    
  }
  
  void Render()
  {
    tint(HBrightness,HBrightness,HBrightness);
    HBrightness+=HDelta;
    
    FBackgroundY1= FBackgroundY1-FBackgroundYspeed;
    FBackgroundY2= FBackgroundY2- FBackgroundYspeed;
    fill(0,0,0);
    rect(400,400,800,800);
    fill(245,245,245);
    rect(420,400,430,800);
    image(Fallingbackground,400,FBackgroundY1);
    image(Fallingbackground,400,FBackgroundY2);
    if(FBackgroundY1<-400)
    {
      FBackgroundY1=1200;
    }
    if(FBackgroundY2<-400)
    {
      FBackgroundY2=1200;
    }
    
    image(Chair,ChairAX,ChairAY);
    image(Chair,ChairBX,ChairBY);
    ChairAY=ChairAY+ChairAYspeed;
    ChairBY=ChairBY+ChairBYspeed;
    image(HAlice, HAliceX, HAliceY);
    HAliceY=HAliceY+HAliceYspeed;
    image(Clock,ClockX,ClockY);
    ClockY=ClockY+ClockYspeed;
    image(Book, BookX,BookY);
    BookY=BookY-10;
    image(Book1, Book1X,Book1Y);
    Book1Y=Book1Y-9.5;
    image(Piano,PianoX,PianoY);
    PianoY=PianoY+6;
    
    if(keyPressed)
    {
      if(key=='a')
      {
        HAliceX=HAliceX-4;
      }
      if(key=='d')
      {
        HAliceX=HAliceX+4;
      }
    }
    if(HAliceX>800)
    {
      HAliceX=800;
    }
    if(HAliceX<0)
    {
      HAliceX=0;
    }
    if(BookY<-100)
    {
      BookX=random(0,800);
      BookY=random(1000,1500);
    }
    if(Book1Y<-100)
    {
      Book1X=random(0,800);
      Book1Y=random(900,1200);
    }
    if(PianoY>1200)
    {
     PianoX=random(0,800);
     PianoY=random(-200,-500);
    }
    
    if(ChairAY>110)
    {
      ChairAYspeed=-1;
    }
    if(ChairAY<90)
    {
      ChairAYspeed= 1;
    }
    if(ChairBY>712)
    {
      ChairBYspeed=-0.8;
    }
    if(ChairBY<688)
    {
      ChairBYspeed= 0.8;
    }
    if(ClockY>653)
    {
      ClockYspeed=-2;
    }
    if(ClockY<647)
    {
      ClockYspeed=2;
    }
    tint(255,255);
    if(dist(HAliceX,HAliceY, BookX,BookY)<120)
    {
      Lifespan=Lifespan-50;
      BookX=random(0,800);
      BookY=random(1000,1500);
    }
    if(dist(HAliceX,HAliceY, Book1X,Book1Y)<120)
    {
      Book1X=random(0,800);
      Book1Y=random(900,1200);
      Lifespan=Lifespan-60;
    }
    if(dist(HAliceX,HAliceY, PianoX,PianoY)<230)
    {
      PianoX=random(0,800);
      PianoY=random(-200,-500);
      Lifespan=Lifespan-100;
    }
    fill(ColorR,ColorG,0);
    rect(400,700,Lifespan,40);
    ColorR=255-Lifespan/3;
    ColorG=Lifespan/3;
    fill(0,0,0);
    textSize(30);
    text(Lifespan, 380,710);
    if(Lifespan<0 || Lifespan==0)
    {
      Lifespan=0;
      HAliceYspeed=5;
    }
    if(HAliceY>750)
    {
      Scene=3;
    } 
  }
}