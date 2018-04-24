
Entry e; 
Hole h;
Room r;
BigSmall bs;
Forest f;
LastScene ls;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;

int Scene= 0;
PImage Book;
PImage Cat;
float Brightness=0;
float distance;


void setup()
{
  size(800,800,P2D);
  imageMode(CENTER);
  rectMode(CENTER);
  Cat= loadImage("Cat.jpg");
  Cat.resize(800,500);
  Book=loadImage("Bookbackground.jpg");
  Book.resize(800,800);
  e= new Entry();
  h= new Hole();
  r= new Room();
  bs= new BigSmall();
  f= new Forest();
  ls=new LastScene();
  minim = new Minim(this);
  song= minim.loadFile("AliceBgm.mp3");
}

void draw()
{
  background(0);
  song.play();
  image(Cat,400,400);
  textSize(50);
  text("Click the rabbit",200,100);
  Brightness= 255- distance;
  distance= dist(530,350,mouseX,mouseY);
  tint(255,Brightness);
  image(Book,400,400);
    tint(255,255);
    if (Scene==1)
  {
    e.Render();
  }  
  if (Scene==2)
  {
    h.Render();
  }
  if (Scene==3)
  {
    r.Render();
  }
  if (Scene==4)
  {
   bs.Render();
  }
  if (Scene==5)
  {
    f.Render();
  }
  if (Scene==6)
  {
    ls.Render();
  }

}



void mouseReleased()
{
  if (dist(mouseX,mouseY, 530,350)<30)
  {
    Scene=1;
  }
}