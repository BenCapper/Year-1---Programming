public class Rider {
   private  int rand = int(random(4));
   private  float x, y, diam, move = 2;
   private  int red, green, blue;
  
  Rider(float x, float y, float diam){
    this.x = x;
    this.y = y;
    this.diam = diam;
  }
  
  Rider(float x, float y, float diam, int red, int green, int blue){
    this.x = x;
    this.y = y;
    this.diam = diam;
    this.red = red;
    this.green = green;
    this.blue = blue;
    
    
    if(red < 0 || red > 255){
      this.red = 100;
    }
    if(green < 0 || green > 255){
      this.green = 180;
    }
    if(blue < 0 || blue > 255){
      this.blue = 20;
    }
  }
  
  void display(){
    strokeWeight(2);
    fillStroke(0,0,0);
    ellipse(x,y-20,diam,diam);
    fillStroke(this.red,this.green,this.blue);
    line(x,y-15,x,y+10);
    line(x,y-5,x+8,y-10);
    line(x,y-5,x-8,y-10);
    line(x,y+10,x+8,y);
    line(x+8,y,x+8,y+10);
    line(x,y+10,x-8,y);
    line(x-8,y,x-8,y+10);
    strokeWeight(1);
  }
  public void move() {
   this.y -= move;
  }
  
  void colour(int red, int green, int blue){
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
  public float getDiam(){
    return this.diam;
  }
  public int getRandom(){
    return this.rand;
  }
  public float getMove(){
   return this.move;
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
  public void setDiam(float diam){
    this.diam = diam;
  }
  public void setRandom(int rand){
    this.rand = rand;
  }
  public void setMove(float move){
   this.move = move;
 }
  public void setRed(int red){
    this.red = red;
  }
  public void setGreen(int green){
    this.green = green;
  }
  public void setBlue(int blue){
    this.blue = blue;
  }
  
}
