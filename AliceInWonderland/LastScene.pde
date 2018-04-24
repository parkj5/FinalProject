class LastScene
{
  PImage LSBackground;
  PImage LSWord;
  PImage Eye;
  float LSBrightness=100;
  float LSDelta=0.3;
  
  
  LastScene()
  {
    LSBackground=loadImage("LSBackground.jpg");
    LSBackground.resize(800,800);
    LSWord=loadImage("LastSceneWord.png");
    LSWord.resize(300,300);
    Eye=loadImage("Eye.png");
    Eye.resize(20,20);
    
  }
  void Render()
  {
    LSBrightness+=LSDelta;
    if(LSBrightness>255)
    {
      LSDelta*=-1;
    }
    if(LSBrightness<100)
    {
      LSDelta*=-1;
    }
    tint(LSBrightness,LSBrightness,LSBrightness);
    image(LSBackground,400,400);
    tint(255,255);
    image(LSWord,600,400);
    println(mouseX,mouseY);
    tint(200-LSBrightness,200-LSBrightness,200-LSBrightness);
    image(Eye,415,260);
    image(Eye,435,260);
  }
  
}