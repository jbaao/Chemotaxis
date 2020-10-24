 bacteria[] colony;
 void setup()   
 {     
   size(500,500);
   background(0,0,0);
   colony = new bacteria[15];
   for(int i=0; i<colony.length;i++){
     colony[i] = new bacteria();
   }  
 }   
 void draw()   
 {    
   background(0,0,0);
   for(int i=0; i<colony.length;i++){
     colony[i].move();
     colony[i].show();
   }
 }  
 class bacteria    
 {     
   int x;
   int y;
   int bacteriaColor;
   bacteria(){
     x= (int)(Math.random()*50);
     y= (int)(Math.random()*50);
     bacteriaColor = color(0,255,51);
 }    
 void move() {
   x = x+ ((int)(Math.random()*5));
   y = y+ ((int)(Math.random()*5));
 }
  void show() {
    fill(bacteriaColor);
    ellipse(x,y,10,10);
 }
 }
