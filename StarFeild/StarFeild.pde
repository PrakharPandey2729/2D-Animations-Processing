Star[] stars = new Star[1000];
float speed;
void setup() 
  {
  size(800, 500);
  for(int i = 0; i < stars.length; i++)
    stars[i] = new Star();
  }
void draw()
  {
    background(0);
    speed = map(mouseX , 0 , width , 0, 20); 
    translate(width/2,height/2);
    for(int i = 0; i < stars.length; i++)
      {
        stars[i].show();
        stars[i].update();
      }
   }
