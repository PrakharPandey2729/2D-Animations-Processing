void setup() {
  size(800,800);
}

void draw() {
  background(255);
  
  float sec = second();
  float min = minute();
  float hou = hour();
  
  strokeWeight(1);
  stroke(249, 54, 19);
  fill(249, 54, 19);
  float secAngle = map(sec, 0, 60, 0, 360);
  arc(400, 400, 700, 700, radians(-90), radians(secAngle-90), PIE);
  
  stroke(255);
  fill(255);
  ellipse(400,400,549,549);
  
  stroke(249, 149, 18);
  fill(249, 149, 18);
  float minAngle = map(min, 0, 60, 0, 360);
  arc(400, 400, 550, 550, radians(-90), radians(minAngle-90), PIE);
  
  stroke(255);
  fill(255);
  ellipse(400,400,399,399);
  
  stroke(249, 218, 18);
  fill(249, 218, 18);
  float houAngle = map(hou % 12, 0, 12, 0, 360);
  arc(400, 400, 400, 400, radians(-90), radians(houAngle-90), PIE);
  
  stroke(255);
  fill(255);
  ellipse(400,400,250,250);
  
  fill(0);
  noStroke();
  textSize(30);
  textAlign(CENTER, CENTER);
  text(int(hou) +":"+ int(min) +":"+ int(sec), 400, 400);
}
