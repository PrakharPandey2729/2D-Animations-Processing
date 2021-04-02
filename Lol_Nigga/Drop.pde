class Drop
{

  float x = random(width) ;
  float y = random(-500, -50); 
  float z = random(0, 20);
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 4, 10);
  float heightlol = map(z, 0, 20, height/2 + 10, height);

  void fall() 
  {
    y = y + yspeed;
    float grav = map(z, 0, 20, 0, 0.2);
    yspeed = yspeed + grav;
    if (y > heightlol)
    {
      y = random(-200, 100); 
      yspeed = map(z, 0, 20, 4, 10);
    }
  }

  void show() 
  {
    float thick = map(z, 0, 20, 1, 2.5);
    strokeWeight(thick);
    stroke(255, 255, 255, 127);
    //tint(255, 126);
    line(x, y, x, y + len);
    //noStroke();
    //fill(255, 255, 255, 127);
    //ellipse(x, y, thick , thick);
  }
}
