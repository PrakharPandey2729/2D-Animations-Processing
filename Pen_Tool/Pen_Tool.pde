//Press  the mouse to draw
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
  line(mouseX,mouseY,pmouseX,pmouseY);
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
