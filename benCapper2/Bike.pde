
public class Bike {
  private  int rand = int(random(4));
  private  float x, y, bLength, move=2;
  private  int i, red, green, blue;
  
  Bike(){
  }
  
  Bike(int red, int green, int blue){
    this.red = red;
    this.green = green;
    this.blue = blue;
  }
  
  Bike(float x, float y, float bLength){
    this.x = x;
    this.y = y;
    this.bLength = bLength;
  }
  
  Bike(float x, float y, float bLength, int i) {
    this.x = x;
    this.y = y;
    this.bLength = bLength;
    this.i = i;
  }
  
  Bike(float x, float y, float bLength, int red, int green, int blue){
    this.x = x;
    this.y = y;
    this.bLength = bLength;
    this.red = red;
    this.green = green;
    this.blue = blue;
    
    if(red < 0 || red > 255){
      this.red = 200;
    }
    if(green < 0 || green > 255){
      this.green = 120;
    }
    if(blue < 0 || blue > 255){
      this.blue = 30;
    }
    }
  
  Bike(float x, float y, float bLength, int i, int red, int green, int blue){
    this.x = x;
    this.y = y;
    this.bLength = bLength;
    this.i = i;
    this.red = red;
    this.green = green;
    this.blue = blue;
    
    if(red < 0 || red > 255){
      this.red = 200;
    }
    if(green < 0 || green > 255){
      this.green = 120;
    }
    if(blue < 0 || blue > 255){
      this.blue = 30;
    }
    }
    
  
public void display() {
   fill(0);
   noStroke();
   ellipse(x+50,y+10,bLength-5,bLength+10);
   colour(this.red,this.green,this.blue);
   ellipse(x+50,y+50,bLength+10,bLength+50);
   fill(0);
   ellipse(x+50,y+90,bLength-5,bLength+10);
   stroke(2);
 }
 
public void move() {
   this.y -= move;
  }
 
 void colour(int red, int green, int blue){
   this.red = red;
   this.green = green;
   this.blue = blue;
   fill(red,green,blue);
 }
 
 public float getX(){
   return this.x;
 }
 public float getY(){
   return this.y;
 }
 public float getbLength(){
   return this.bLength;
 }
 public int getRandom(){
   return this.rand;
 }
 public float getMove(){
   return this.move;
 }
 public int getI(){ // i = bikeNo (called i so same as counter in main program)
   return this.i;
 }
 public int getRed(){
   return this.red;
 }
 public int getGreen(){
   return this.green;
 }
 public int getBlue(){
   return this.blue;
 }
 
 public void setX(float x){
   this.x = x;
 }
 public void setY(float y){
   this.y = y;
 }
 public void setRandom(int rand){
   this.rand = rand;
 }
 public void setMove(float move){
   this.move = move;
 }
 public void setI(int i){
   this.i = i;
 }
 public void setRed(int red){
   this.red = red;
      if(red >= 0 && red <= 255){
      this.red = red;
      }
    }
    
 public void setGreen(int green) {
   this.green = green;
      if(green >= 0 && green <= 255){
      this.green = green;
      }
    }
 public void setBlue(int blue) {
   this.blue = blue;
      if(blue >= 0 && blue <= 255){
      this.blue = blue;
      }
    }
 
 }
