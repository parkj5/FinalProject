class Room
{
  PImage Roombackground;
  PImage Eatme;
  PImage Drinkme;
  PImage Check;
  PImage Key;
  float Check1tint=0;
  float Check2tint=0;
  
  Room()
  {
    Roombackground= loadImage("Roombackground.jpg");
    Roombackground.resize(800,800);
    Eatme=loadImage("Eatme.png");
    Eatme.resize(40,40);
    Drinkme=loadImage("Drinkme.png");
    Drinkme.resize(50,50);
    Check= loadImage("Check.png");
    Check.resize(50,50);
    Key=loadImage("Key.png");
    Key.resize(120,120);
    
    
  }
  void Render()
  {
    
    image(Roombackground,400,400);
    image(Eatme,360,620);
    image(Drinkme,695,670); 
    tint(255,Check1tint);
    image(Check,360,620);
    tint(255,Check2tint);
    image(Check,695,670);
    fill(255,255,255);
    textSize(50);
    text("I'm so hungry and thirsty", 100,100);
    if(mousePressed)
    {
      if(dist(mouseX,mouseY,360,620)<20)
      {
        Check1tint=255;
      }
      if(dist(mouseX,mouseY,695,670)<25)
      {
        Check2tint=255;
      }
    }
    
    if(Check1tint==255 && Check2tint==255)
    {
      image(Key,400,280);
      if(mousePressed)
      {
        if(dist(mouseX,mouseY,400,300)<60)
        {
          Scene=4;
        }
      }
    }
    
    
  }
}