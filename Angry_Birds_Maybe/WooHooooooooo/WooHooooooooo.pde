//Instructions:
//SIMPLY CLICK ON THE BIRDS AND DRAG THEM. ITS NOT NECESSARY TO CLICK ON THE BIRDS YOU CAN CLICK ANYWHERE.
//TO RELOAD THE NUMBER OF BIRDS AVAILABLE, ROLL THE MOUSE-SCROLL BUTTON.
//PRESS SPACEBAR TO FREEZE EVERYTHING.

import processing.sound.*;
SoundFile file1, file2;
PImage img, img2, img3, img4, img5;
float xspeed = 0;
float yspeed = 0;
float xloc;
float yloc;
float grav = 0;
boolean going = true;
float balls = 3;
float click = 1;

void setup()
{ 
  img  = loadImage("space.png");
  img2 = loadImage("Terence.png");
  img3 = loadImage("LOGO.png");
  img5 = loadImage("catapult_right.png");
  img4 = loadImage("catapult_left.png");
  file1 = new SoundFile(this, "launch.mp3");
  //file2 = new SoundFile(this, "catapult.mp3");
  //img = loadImage("hd-angry-bird-background.jpg");
  //fullScreen();
  size(800, 600);
  yloc = height - 220;
  xloc = 150;
  strokeWeight(3);
}

void design()
{
  imageMode(CORNER);
  image(img, 0, 0);
  imageMode(CENTER);
  //image(img3, 400, 270, 369, 153);
  image(img5, 148, height - 175, 45.7, 100);
}

void draw()
{
  design();
  if(mousePressed && balls >=0)
  {
    yspeed = (mouseY-(height - 220))/10;
    xspeed = (mouseX-150)/15;
    xloc = mouseX;
    yloc = mouseY;
    grav = 0.15;
    plotDots();
  }
  else if(going)
  {
    check();
    yspeed -= grav;
    if(yloc == height - 14)
      xspeed /= 1.05;
    xloc -= xspeed;
    yloc -= yspeed;
  }
  for(int i = 0; i < balls; i++)
  {
  stroke(0);
  fill(255);
  //ellipse(40*i + 30, height - 25, 24, 24);
  imageMode(CENTER);
  image(img2, 40*i + 30, height - 25, 35.4, 33.2);
  }
  if(mousePressed && balls >=0)
  {
    stroke(70, 30, 0);
    line(156, height-202, xloc, yloc);
   }  
  stroke(0);
  fill(255);
  //ellipse(xloc, yloc, 24, 24);
  imageMode(CENTER);
  image(img2, xloc, yloc, 35.4, 33.2);
  image(img4, 150, height - 187, 45.7, 100);
   if(mousePressed && balls >=0)
   {
    stroke(70, 30, 0);
    line(138, height-215, xloc, yloc);
   }  
  println("X: "+xloc);
  println("Y: "+yloc);
  println("XSpeed: "+xspeed);
  println("YSpeed: "+yspeed);
  println("Balls: "+balls);
  drawArc();

}

void drawArc()
{
  
}

void keyPressed()
{
  going = !going;
}

void mousePressed()
{
  if(click != 1)
  balls--;
  click++;
}  

void mouseWheel()
{
  balls = 4;
}  

void plotDots()
{
  float yspeeder = yspeed;
  float ylocer = yloc;
  for(int i = 1; i <= (abs(2*xspeed)+abs(yspeed))/2*4; i++)
    { 
      float dotSize = map(i, 1, (abs(2*xspeed)+abs(yspeed))/2*4, 6, 1);
      ylocer -= yspeeder;
      noStroke();
      fill(255, 0, 0, 240) ;
      ellipse((i*xspeed)/(-1)+mouseX, ylocer, dotSize, dotSize);
      yspeeder = yspeeder - grav;
    }
}

void mouseReleased()
{
  if(balls >= 0 && going)
  {
   file1.play();
   //file1.rate(map((abs(xspeed)+abs(yspeed))/2, 5, 30, 1, 2));
  }  
}
  



































void check()
{
  if(xloc < 13) 
    {
      xspeed = xspeed*(-1)/1.2;
      xloc = 13;
    }
    else if(xloc > width-13)
    {
      xspeed = xspeed*(-1)/1.2;
      xloc = width-13;
    }
    if(yloc < 14) 
    {
      yspeed = yspeed*(-1)/1.4;
      yloc = 14;
    }
    else if(yloc > height-14)
    {
      yspeed = yspeed*(-1)/1.4;
      yloc = height-14;
    } 
}   
//hathway  
