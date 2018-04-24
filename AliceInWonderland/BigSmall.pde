class BigSmall
{
  PImage BSBackground;
  PImage BSAlice;
  PImage Eatme;
  PImage Drinkme;
  PImage Key;
  int BSBackgroundheight= 1200;
  int BSBackgroundwidth=1200;
  int BSBackgroundheightvector= 2;
  int BSBackgroundwidthvector= 2;
  int BSAlicewidth= 500;
  int BSAliceheight= 500;
  float BSAliceY=550;
  float BSAliceYvector=-1;
  int BSAliceheightvector=2;
  int BSAlicewidthvector=2;
  float EatDrinkmecolor=0;
  
  BigSmall()
 {
    Eatme=loadImage("Eatme.png");
    Eatme.resize(150,150);
    Drinkme=loadImage("Drinkme.png");
    Drinkme.resize(150,150);
    Key=loadImage("Key.png");
    Key.resize(120,120);
 }
 
 void Render()
 {
   BSBackground=loadImage("Doorbackground.jpg");
   BSBackground.resize(BSBackgroundwidth,BSBackgroundheight);
   BSAlice=loadImage("BSAlice.png");
   BSAlice.resize(BSAlicewidth,BSAliceheight);
   image(BSBackground,400,300);
   image(BSAlice,400,BSAliceY);
   tint(255,EatDrinkmecolor);
   image(Eatme,150,150);
   image(Drinkme,650,150);
   if(BSAliceY==450)
   {
     EatDrinkmecolor=255;
     BSBackgroundheightvector=0;
     BSBackgroundwidthvector=0;
     BSAliceYvector=0;
   }
   
   if(keyPressed)
   { 
     if(key=='w')
     {
       BSAliceY=BSAliceY+BSAliceYvector;
       BSBackgroundheight=BSBackgroundheight+BSBackgroundheightvector;
       BSBackgroundwidth=BSBackgroundwidth+BSBackgroundwidthvector;
     }
    
   }
     
   
   if(mousePressed)
   {
     if(dist(mouseX,mouseY, 150,150)<75)
     {
       BSAliceheight=BSAliceheight+BSAliceheightvector;
       BSAlicewidth=BSAlicewidth+BSAlicewidthvector;
       BSAliceYvector=0.8;
       BSAliceY=BSAliceY- BSAliceYvector;
     }
     if(dist(mouseX,mouseY,650,150)<75)
     {
       BSAliceheight=BSAliceheight-BSAliceheightvector;
       BSAlicewidth=BSAlicewidth-BSAlicewidthvector;
       BSAliceYvector=0.8;
       BSAliceY=BSAliceY+ BSAliceYvector;
     }
   }
   tint(255,255);
   if(BSAlicewidth<191)
   {
     BSAlicewidth=190;
     BSAliceheight=190;
     BSAliceYvector=0;
     image(Key,200,540);
     EatDrinkmecolor=0;
     if(mousePressed)
     {
       if(dist(mouseX,mouseY, 200,540)<60)
       {
         Scene=5;
       }
     }
   }
   
 }
 
}