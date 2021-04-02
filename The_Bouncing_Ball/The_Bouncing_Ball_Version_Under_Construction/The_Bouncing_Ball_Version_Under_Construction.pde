float ballX   = 0;
float ballY   = 0;
float updateX = 0;
float updateY = 0;
int   string     ; 

void setup()
{
size(640,360);
}

void draw() 
{
 background(50);
 string = (((int)(mouseX - ballX))^2 + ((int)(mouseY - ballY))^1/2);
 if(string > 150)
 {
 updateX = (mouseX - ballX)/50;
 updateY = (mouseY - ballY)/50;
 }
 ballX += updateX;
 ballY += updateY;
 ellipse(ballX, ballY, 24, 24);
 stroke(255);
 line(mouseX, mouseY, ballX, ballY);
}
