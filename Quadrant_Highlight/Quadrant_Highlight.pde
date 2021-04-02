void setup()
{
 size(640, 360);
} 
void draw()
{ 
  background(50);
  stroke(255);
  line(0,height/2,width,height/2);
  stroke(255);
  line(width/2,0,width/2,height);
  if(mouseX < width/2 && mouseY < height/2)
  {
    fill(250, 0, 0);
    rect(0,0,width/2,height/2);
    println("QUAD 1");
  }
  else if(mouseX < width && mouseY < height/2)
  {
    fill(0, 250, 0);
    rect(width/2,0,width/2,height/2);
    println("QUAD 2");
  } 
  else if(mouseX < width/2 && mouseY < height)
  {
    fill(0, 0, 250);
    rect(0,height/2,width/2,height);
    println("QUAD 3");
  }
  else 
  {
    fill(230, 230, 250);
    rect(width/2,height/2,width,height);
    println("QUAD 4");
  } 
}
