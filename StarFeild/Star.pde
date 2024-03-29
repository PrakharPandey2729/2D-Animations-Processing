class Star 
{  
   //DECLARATION OF VARIABLES
   float x;
   float y;
   float z;
   float pz;
   
   //CONSTRUCTOR
 Star() 
   {
     x = random(-width,width);
     y = random(-height,height);
     z = random(width);
   }
   
   //FUNCTIONS
 void update() 
   {
     z=z-speed;
     if(z<1)
       {
         x = random(-width,width);
         y = random(-height,height);
         z = random(width);
         pz=z;
       }
   }
 void show() 
   {
     fill(255);
     noStroke();
     float sx = map(x/z, 0, 1, 0, width); 
     float sy = map(y/z, 0, 1, 0, height);
     float px = map(x/pz, 0, 1, 0, width); 
     float py = map(y/pz, 0, 1, 0, height);
     pz=z;
     stroke(255);
     line(px, py, sx, sy);
   }
}  
