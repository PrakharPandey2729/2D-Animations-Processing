//Press  the mouse to draw the rope(KIND OF) 
//Scroll the mouse to clear up the screen
void setup()
{
  size(640,360);  background(94);

}
void draw()
{
  if(mousePressed)
  {
  stroke(255);
  fill(0,30,0);
  tint(255,127);
  ellipse(mouseX,mouseY,pmouseX,pmouseY);
  }
}
void keyPressed()
{
  background(94);
}
void mouseWheel()
{
  background(94);
  }
