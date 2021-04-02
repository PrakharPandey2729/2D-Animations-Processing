//Click Mouse to STOP/PLAY
//Press Key(ANY) to RESPAWN Ball 
float ballX   = random(12,width-12);
float ballY   = random(12,height-12);
float updateX;
float updateY;
boolean going = false;
void setup()
{
  size(640, 320);
}
void draw()
{ 
  updateX = map(mouseX, 0, width , -7, 7);
  updateY = map(mouseY, 0, height, -7, 7);
  background(50);
  fill(255);
  ellipse(ballX, ballY, 24, 24);
  stroke(255);
  line(mouseX, mouseY,ballX, ballY); 
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
  updateX = map(mouseX, 0, width , -7, 7);
  updateY = map(mouseY, 0, height, -7, 7);
}
