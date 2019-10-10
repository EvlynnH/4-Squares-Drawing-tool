//colorPallet a;
colorSquares b;
colorSquares c;
colorSquares d;
colorSquares e;
int red = 0;
int blue = 0; 
int green = 0;
int yellow = 0;
int violet = 0;
int orange = 0;
int brown = 0;
int powderBlue = 0; 



void setup(){
  size(800,600);
  background(0);
 // a = new colorPallet();
  b = new colorSquares(100,100);
  c = new colorSquares(100,500);
  d = new colorSquares(700,100);
  e = new colorSquares(700,500);
}


void draw(){

 //  a.drawing();
   b.display();
   b.selection();
   b.redCO();
   b.blueCO();
   b.greenCO();
   b.yellowCO();
   b.violetCO();
   b.orangeCO();
   b.brownCO();
   b.powderBlueCO();
   
   c.display();
   c.selection();
   c.redCO();
   c.blueCO();
   c.greenCO();
   c.yellowCO();
   c.violetCO();
   c.orangeCO();
   c.brownCO();
   c.powderBlueCO();
   
   d.display();
   d.selection();
   d.redCO();
   d.blueCO();
   d.greenCO();
   d.yellowCO();
   d.violetCO();
   d.orangeCO();
   d.brownCO();
   d.powderBlueCO();
   
   e.display();
   e.selection();
   e.redCO();
   e.blueCO(); 
   e.greenCO();
   e.yellowCO();
   e.violetCO();
   e.orangeCO();
   e.brownCO();
   e.powderBlueCO();
   
  }
  
  
// Using this class, the color selection can be anywhere on the screen
// x and y are in the middle of all the colored squares 
class colorSquares{
  int x;
  int y;
  
  colorSquares(int x,int y){
    this.x = x;
    this.y = y;
  }

  
   
  void display(){
    stroke(255);
    rectMode(CENTER);
    //red top left 
    fill(250,30,30,200);
    rect(x-20,y-20,20,20); 
    
    // blue top middle 
    fill(30,30,250,200);
    rect(x,y-20,20,20);
    
    //green top right 
    fill(30,250,30,200);
    rect(x+20,y-20,20,20);
    
    //yellow middle left
    fill(250,250,0,200);
    rect(x-20,y,20,20);
    
    //violet middle right
    fill(250,30,200,250);
    rect(x+20,y,20,20);
    
    //orange bottom left 
    fill(200,200,200,200);
    rect(x-20,y+20,20,20);
    
    //brown bottom middle
    fill(136,69,16,200);
    rect(x,y+20,20,20);
    
    //powder blue bottom right
    fill(230,230,255);
    rect(x+20,y+20,20,20);
    
  } 
  
  void selection(){
    if(mousePressed){
      //red top left
      if((mouseX < (x-10) && mouseY < (y-10)) && (mouseX > (x-30) && mouseY > (y-30))){
       red = 1;
       blue = 0; 
       green = 0;
       yellow = 0;
       violet = 0;
       orange = 0;
       brown = 0;
       powderBlue = 0; 
      }
      
      if((mouseX < (x+10) && mouseY < (y-10)) && (mouseX > (x-10) && mouseY > (y-30))){
       red = 0;
       blue = 1; 
       green = 0;
       yellow = 0;
       violet = 0;
       orange = 0;
       brown = 0;
       powderBlue = 0; 
      }
      
      if((mouseX < (x+30) && mouseY < (y-10)) && (mouseX > (x+10) && mouseY > (y-30))){
       red = 0;
       blue = 0; 
       green = 1;
       yellow = 0;
       violet = 0;
       orange = 0;
       brown = 0;
       powderBlue = 0; 
      }
      
      if((mouseX < (x-10) && mouseY < (y+10)) && (mouseX > (x-30) && mouseY > (y-10))){
       red = 0;
       blue = 0; 
       green = 0;
       yellow = 1;
       violet = 0;
       orange = 0;
       brown = 0;
       powderBlue = 0; 
      }
       if((mouseX < (x+30) && mouseY < (y+10)) && (mouseX > (x+10) && mouseY > (y-10))){
       red = 0;
       blue = 0; 
       green = 0;
       yellow = 0;
       violet = 1;
       orange = 0;
       brown = 0;
       powderBlue = 0; 
      }
      
       if((mouseX < (x-10) && mouseY < (y+30)) && (mouseX > (x-30) && mouseY > (y+10))){
       red = 0;
       blue = 0; 
       green = 0;
       yellow = 0;
       violet = 0;
       orange = 1;
       brown = 0;
       powderBlue = 0; 
      }
  
       if((mouseX < (x+10) && mouseY < (y+30)) && (mouseX > (x-10) && mouseY > (y+10))){
       red = 0;
       blue = 0; 
       green = 0;
       yellow = 0;
       violet = 0;
       orange = 0;
       brown = 1;
       powderBlue = 0; 
      }
      
      
       if((mouseX < (x+30) && mouseY < (y+30)) && (mouseX > (x+10) && mouseY > (y+10))){
       red = 0;
       blue = 0; 
       green = 0;
       yellow = 0;
       violet = 0;
       orange = 0;
       brown = 0;
       powderBlue = 1; 
      }
  
  
    }
    
    
  }
  
  void redCO(){
    if (red == 1 && mousePressed){
        stroke(250,30,30,200);
        strokeWeight(3);
        line(pmouseX, pmouseY, mouseX, mouseY);
    }
  }
  
    void blueCO(){
    if (blue == 1 && mousePressed){
        stroke(30,30,250,200);
        strokeWeight(3);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
    }
    
    void greenCO(){
    if (green == 1 && mousePressed){
        stroke(30,250,30,200);
        strokeWeight(3);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
    }
    
    
    void yellowCO(){
    if (yellow == 1 && mousePressed){
        stroke(250,250,0,200);
        strokeWeight(3);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
    }
    
    void violetCO(){
    if (violet == 1 && mousePressed){
        stroke(250,30,200,250);
        strokeWeight(3);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
    }
    
    
    void orangeCO(){
    if (orange == 1 && mousePressed){
        stroke(200,200,200,200);
        strokeWeight(3);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
    }
    
    void brownCO(){
    if (brown == 1 && mousePressed){
        stroke(136,69,16,200);
        strokeWeight(3);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
    }
    
    void powderBlueCO(){
    if (powderBlue == 1 && mousePressed){
        stroke(230,230,255);
        strokeWeight(3);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
    
      
    
  }
}
  
  
class colorPallet {
  //int x,y;
   void drawing(){
      stroke(255);
      //blue top
      fill(30,30,250,200);
      triangle(725,200,700,175,750,175);
      curve(725,200,700,175,750,175,725,200);
      
      //red left 
      fill(250,30,30,200);
      triangle(725,200,700,175,700,225);
      
      //green right
      fill(30,250,30,200);
      triangle(725,200,700,225,750,225);
      
      //yellow bottom 
      fill(250,250,0,200);
      triangle(725,200,750,225,750,175); 
   }
}
   
 /*  void clicking(){
     if (mousePressed && mouseX <= 
     
   }
   */
   
   