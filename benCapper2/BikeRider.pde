public class BikeRider {
  private  int rand = int(random(4));
  private  float x, y, bLength, move=1;
  private  String text;
  private  int i, red, green, blue, redBike, greenBike, blueBike;
  
  BikeRider(){
  }
  
  BikeRider(int red, int green, int blue){
    this.red = red;
    this.green = green;
    this.blue = blue;
  }
  
  BikeRider(float x, float y, float bLength){
    this.x = x;
    this.y = y;
    this.bLength = bLength;
  }
  
  BikeRider(float x, float y, float bLength, int i) {
    this.x = x;
    this.y = y;
    this.bLength = bLength;
    this.i = i;
  }
  
  BikeRider(float x, float y, float bLength, int i, String text){
    this.x = x;
    this.y = y;
    this.bLength = bLength;
    this.i = i;
    this.text = text;
  }
  
  BikeRider(float x, float y, float bLength, int red, int green, int blue){
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
    
  BikeRider(float x, float y, float bLength,int i, int red, int green, int blue){
    this.x = x;
    this.y = y;
    this.bLength = bLength;
    this.i = i;
    this.red = red;
    this.green = green;
    this.blue = blue;
  }
  
  BikeRider(float x, float y, float bLength, int i, int red, int green, int blue, String text){
    this.x = x;
    this.y = y;
    this.bLength = bLength;
    this.i = i;
    this.red = red;
    this.green = green;
    this.blue = blue;
    this.text = text;
    
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
    
    BikeRider(float x, float y, float bLength, int i, int red, int green, int blue, int redBike, int greenBike, int blueBike){
    this.x = x;
    this.y = y;
    this.bLength = bLength;
    this.i = i;
    this.red = red;
    this.green = green;
    this.blue = blue;
    this.redBike = redBike;
    this.greenBike = greenBike;
    this.blueBike = blueBike;
    
    if(red < 0 || red > 255){
      this.red = 00;
    }
    if(green < 0 || green > 255){
      this.green = 220;
    }
    if(blue < 0 || blue > 255){
      this.blue = 130;
    }
    if(redBike < 0 || redBike > 255){
      this.redBike = 200;
    }
    if(greenBike < 0 || greenBike > 255){
      this.greenBike = 120;
    }
    if(blueBike < 0 || blueBike > 255){
      this.blueBike = 220;
    }
    }
    
  
public void display() {
   fill(0);
   noStroke();
   ellipse(x+50,y+10,bLength-5,bLength+10);
   colour(this.redBike,this.greenBike,this.blueBike);
   ellipse(x+50,y+50,bLength+10,bLength+50);
   fill(0);
   ellipse(x+50,y+90,bLength-5,bLength+10);
   stroke(2);
   strokeWeight(2);
   fillStroke(0,0,0);
   ellipse(x+50,y+30,bLength,bLength);
   fill(this.red,this.green,this.blue);
    line(x+50,y+35,x+50,y+60);
    line(x+50,y+45,x+58,y+40);
    line(x+50,y+45,x+42,y+40);
    line(x+50,y+60,x+58,y+50);
    line(x+58,y+50,x+58,y+60);
    line(x+50,y+60,x+42,y+50);
    line(x+42,y+50,x+42,y+60);
   strokeWeight(1);
   stroke(2);
   fill(0);
   textAlign(CENTER);
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
  void fillStroke(int red, int green, int blue) { //lessens repeat code
  fill(red,green,blue);
  stroke(red,green,blue);
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
 public String getText(){
   return this.text;
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
 public void setname(String text){
   this.text = text;
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
