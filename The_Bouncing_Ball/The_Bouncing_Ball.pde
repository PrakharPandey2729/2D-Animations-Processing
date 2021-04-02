//Click Mouse to STOP/PLAY
//Press Key(ANY) to RESPAWN Ball 
float ballX   = random(12,width-12);
float ballY   = random(12,height-12);
float updateX = random(-5,5);
float updateY = random(-5,5);
boolean going = false;
void setup()
{
  size(640, 320);
}
void draw()
{ 
  background(50);
  if(!(ballX > 12 && ballX < width-12))
  updateX *= -1;
  if(!(ballY > 12 && ballY < height-12))
  updateY *= -1;
  fill(255);
  ellipse(ballX, ballY, 24, 24);
  println("UPDATEX = "+updateX+" UPDATEY = "+updateY);
  if(going)
  {
    ballX += updateX; 
    ballY += updateY; 
  }
}
void mousePressed()
{
  going=!going;
}
void keyPressed()
{
  ballX = random(12,width-12);
  ballY = random(12,height-12);
  updateX = random(-5,5);
  updateY = random(-5,5);
}
