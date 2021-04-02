//Click Mouse to STOP/PLAY
//Press Key(ANY) to RESPAWN Ball 
float   ballX   = random(12,width-12);
float   ballY   = random(12,height-12);
float   updateX = 0;
float   updateY = 0;
boolean going;
void setup()
{
size(640,360);
}

void draw() 
{
 background(50);
 updateX = (mouseX - ballX)/50;
 updateY = (mouseY - ballY)/50;
 if(going)
 {
 ballX += updateX;
 ballY += updateY;
 }
 ellipse(ballX, ballY, 24, 24);
 stroke(255);
 line(mouseX, mouseY, ballX, ballY);
}

void mousePressed()
{
  going=!going;
}

void keyPressed()
{
  ballX = random(12,width-12);
  ballY = random(12,height-12);
}  
