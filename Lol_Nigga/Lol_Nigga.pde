PImage img;
Drop [] drops= new Drop[1000];
boolean going = true;
void setup() 
{ 
  img = loadImage("Pink-Floyd-The-Endless-River-cover-art.jpg");
  //img = loadImage("scene.jpg");
  //img = loadImage("Clouds.jpg");
  fullScreen();
  for (int i = 0; i < drops.length; i++)
  {
    drops[i] = new Drop();
  }
}

void draw()
{
  //translate(width/2,height/2);
  //imageMode(CENTER);
  image(img, -150, -150);
  for (int i =0; i < drops.length; i++)
  {
    drops[i].show();
    if (going)
      drops[i].fall();
  }
}
void mousePressed()
{
  going = !going;
}
