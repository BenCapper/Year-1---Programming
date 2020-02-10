public class Text {
 private int rand = int(random(4));
 private float x, y, move = 1;
 private String text;
 private int red, green, blue, i;
 
 Text(String text, float x, float y){
   this.text = text;
   this.x = x;
   this.y = y;
 }
 Text(String text, float x, float y, int i ){
   this.text = text;
   this.x = x;
   this.y = y;
   this.i = i;
 }
 Text(String text, float x, float y, int red, int green, int blue){
   this.text = text;
   this.x = x;
   this.y = y;
   this.red = red;
   this.green = green;
   this.blue = blue;
 }

  Text(String text, float x, float y,int i, int red, int green, int blue){
   this.text = text;
   this.x = x;
   this.y = y;
   this.i = i;
   this.red = red;
   this.green = green;
   this.blue = blue;
 }
 
void display(){
   stroke(2);
   fill(0);
   fill(this.red,this.green,this.blue);
   textAlign(CENTER);
   text(text,x+60,y+120);
   text(i, x+20,y+120);
   textSize(14);
}

public void move() {
   y -= move;
  }
  
public String getText(){
  return this.text;
}
public float getX(){
  return this.x;
}
public float getY(){
  return this.y;
}
public int getRandom(){
  return this.rand;
}
public float getMove(){
  return this.move;
}
public int getI(){
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

public void setText(String text){
  this.text = text;
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
  }
  public void setGreen(int green){
    this.green = green;
  }
  public void setBlue(int blue){
    this.blue = blue;
  }
}
