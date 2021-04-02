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
  //fullScreen();
  size(1200, 500);
  yloc = height - 200;
  xloc = 250;
  strokeWeight(3);
    
}
void draw()
{
  background(50);
  if(mousePressed && balls >=0)
  {
    yspeed = (mouseY-(height - 200))/15;
    xspeed = (mouseX-250)/15;
    xloc = mouseX;
    yloc = mouseY;
    grav = 0.15;
    stroke(255);
    line(250, height-200, xloc, yloc);
    plotDots();
  }
  else if(going)
  {
    check();
    yspeed -= grav;
    if(yloc == height - 13)
      xspeed /= 1.008;
    xloc -= xspeed;
    yloc -= yspeed;
  }
  for(int i = 0; i < balls; i++)
  {
  stroke(0);
  fill(255);
  ellipse(40*i + 30, height - 25, 24, 24);
  }
  stroke(0);
  fill(255);
  ellipse(xloc, yloc, 24, 24);
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
  for(int i = 1; i <= (abs(xspeed)+abs(yspeed))/2*4 /*+ 80 */; i++)
    {
      float dotSize = map(i, 1, (abs(xspeed)+abs(yspeed))/2*4 /*+ 80*/, 6, 1);
      ylocer -= yspeeder;
      noStroke();
      fill(255);
      ellipse((i*xspeed)/(-1)+mouseX, ylocer, dotSize, dotSize);
      yspeeder = yspeeder - grav;
    }
}




































void check()
{
  if(xloc < 13) 
    {
      xspeed = xspeed*(-1)/1.4;
      xloc = 13;
    }
    else if(xloc > width-13)
    {
      xspeed = xspeed*(-1)/1.4;
      xloc = width-13;
    }
    if(yloc < 13) 
    {
      yspeed = yspeed*(-1)/1.4;
      yloc = 13;
    }
    else if(yloc > height-13)
    {
      yspeed = yspeed*(-1)/1.4;
      yloc = height-13;
    } 
}   
  
