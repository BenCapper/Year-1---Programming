public class Grid {
  
  private float x,y;
  
  
  Grid(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void display() {
   stroke(100);
   strokeWeight(2);
   line(x,y,x,y+30);
   line(x,y,x+100,y);
   line(x+100,y,x+100,y+30);
   strokeWeight(1);
  }
  
  public float getX(){
    return this.x;
  }
  public float getY() {
    return this.y;
  }
  
  public void setX(int x){
    this.x = x;
      if (x < 0 || x > 1400){
        this.x = x;
      }
  }
  public void setY(int y){
    this.y = y;
      if (y < 0 || y >900){
        this.y = y;
      }
  }
}
