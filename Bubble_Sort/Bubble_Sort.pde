//Click mouse to STOP
//Press any key to REFRESH SCREEN 
float[] lines;
float swap;
boolean going = true;

void setup()
{
size(700, 400); 
//fullScreen();
lines = new float[width];
for(int i = 0; i < width; i++)
    lines[i] = random(0, height);   
}

void draw()
{
  background(0);
   /*
   for(int i = 1; i <= width/100; i++)
    {
      stroke(255, 0, 0);
      line(i*100, 0, i*100, height);
    }
   */
  for(int i = 0; i < width; i++)
  {
    stroke(255);
    line(i, height, i, height - lines[i]);
  }
  if(going)
  {
    //for(int j = 0; j < (int)(mouseX/100 + 1); j++)
    //{
    for(int i = 0; i < width-1; i++)
    {
      if(lines[i] > lines[i+1])
      {
        swap = lines[i+1];
        lines[i+1] = lines[i];
        lines[i] = swap;
      }
     }
  }
//}
}
void mousePressed()
{
  going = !going;
}
void keyPressed()
{
  for(int i = 0; i < width; i++)
    lines[i] = random(0, height); 
}
