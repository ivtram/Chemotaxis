 Bacteria[] rain;  
 void setup()   
 {     
   background(220,249,249);
   size(300,300);
   rain = new Bacteria[100];
   for(int i = 0; i < rain.length; i++)
   {
     rain[i] = new Bacteria();
   }
 }   
 void draw()   
 { 
   background(220,249,249);
   int myX = 10;
   int myY = 25;
   for (int i = 0; i < 31; i++)
   {
   noStroke();
   fill(255);
   ellipse(myX,myY,50,50);
   myX = myX + 30;
   }

   for(int i = 0; i < rain.length; i++)
   {
   rain[i].move();
   rain[i].show();//move and show the bacteria 
   rain[i].shake();
   }
 }  
 class Bacteria    
 {     
   int x, y;
   int yspeed;
   Bacteria() {
     x = (int)(Math.random()*300); //initial x and y coordinates
     y = (int)(Math.random()*300);
     yspeed = 3;
   }
   void move(){
     y = y + yspeed; //code to move object
     if(y > 300)
     {
       y = (int)(Math.random()*20);
     }
   }
   void show(){
     stroke(97,205,226);
     line(x,y,x,y+5);
   }
   void shake(){
   x = x + (int)(Math.random()*5)-2;
   }
 }    
