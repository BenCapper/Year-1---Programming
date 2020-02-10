import javax.swing.JOptionPane;


int[] values = new int[255];// Create new array of possible values for setting random color
int rand = int(random(values.length));  // rand variable now acts as random function, takes random value from values array
int red, green, blue;
int d = 10;


Bike bike1 = new Bike(800,650,d, 186,41,240);//purple
Bike bike2 = new Bike(850,700,d, 144,245,91);//lime
Bike bike3 = new Bike(1200,900,d, 242,159,24);//orange
Rider rider1 = new Rider(850,700,d, 242,225,24);//yellow
Rider rider2 = new Rider(900,750,d, 247,7,7);//red
Rider rider3 = new Rider(1250,950,d, 75,103,255);//blue
Text options = new Text("ptions"+"\n"+"\n"+"\n"+"Hold Right Mouse Button to move orange bike."+"\n"+"\n"+"Hold Left Mouse Button to move purple and green bikes"
                        +"\n"+"\n"+"Center Mouse Click to reset both sides.", 700,200, 10,200,40);
Grid[] grids;
Bike[] bikes;
Rider[] riders;
Text[] names;
BikeRider[] bikeriders;
BikeRider[] havoc;

void setup() {
  size(1420,900);
  
  int gridAmount = Integer.parseInt(JOptionPane.showInputDialog("Please enter the amount of riders you would like in the race. (Max 9)","6"));
  if(gridAmount < 1 || gridAmount > 9){ //validation
    gridAmount = 6;
  }
  grids = new Grid[gridAmount];
  bikes = new Bike[gridAmount];
  riders = new Rider[gridAmount];
  names = new Text[gridAmount];
  bikeriders = new BikeRider[gridAmount];
  havoc = new BikeRider[250];
  for(int i = 1, b = 1, c = 1; i<=grids.length; i++, b+=2, c++) {
    String text = (JOptionPane.showInputDialog("Please enter the name of Rider " + i, "Mary"));
    int redBike = Integer.parseInt(JOptionPane.showInputDialog("Please enter the red value for bike no " + i, "230"));
    int greenBike = Integer.parseInt(JOptionPane.showInputDialog("Please enter the green value for bike no " + i , "10"));
    int blueBike = Integer.parseInt(JOptionPane.showInputDialog("Please enter the blue value for bike no " + i ,"70"));
    grids[i-1] = new Grid (b*100,c*50);
    names[i-1] = new Text (text,b*100,c*50,i);
    red = Integer.parseInt(JOptionPane.showInputDialog("Please enter the red value for rider no " + i, "20"));
    green = Integer.parseInt(JOptionPane.showInputDialog("Please enter the green value for rider no " + i , "230"));
    blue = Integer.parseInt(JOptionPane.showInputDialog("Please enter the blue value for rider no " + i ,"30"));
    bikeriders[i-1] = new BikeRider (b*100, c*50,d,i,red,green,blue,redBike,greenBike,blueBike);
    println("Please welcome " + text.toUpperCase() + " to the race, starting in position: " + i);
    println("The Red Value of "+ text.toLowerCase() + " is: " + bikeriders[i-1].getRed());
    println("The Green Value of "+ text.toLowerCase() + " is: " + bikeriders[i-1].getGreen());
    println("The Blue Value of "+ text.toLowerCase() + " is: " + bikeriders[i-1].getBlue());
    bikeriders[i-1].setBlue(rand); // set blue value to random value from values array
    println("That colors banned, I set the new blue value for this participant to: "+ bikeriders[i-1].getBlue());
    if(i==3 || i==6 || i==9){
      b = -1;
      c = c+2;
    }
}


}
 

void draw() {
  background(200);
  text("Press o for Options", 1075,888);
  finishLine();
  Lines(60,10);
  Lines(760,10);
  apex(700);
  apex(0);
  apex(1395);
  

  for(int i=0; i<grids.length;i++) { //Shows user selected grid (left hand track)(object arrays)
       grids[i].display();
       names[i].display();
       names[i].move();
       bikeriders[i].display();  
       bikeriders[i].move();
     if(bikeriders[i].getY() > -50) { // sets random start speed for array of objects(bikes with riders)(names seperate)
       bikeriders[i].setMove(bikeriders[i].getRandom()*1);
       names[i].setMove(bikeriders[i].getMove());
       if(bikeriders[i].getRandom() <= 1.5){ //stops bikes being too slow
          bikeriders[i].setMove(2.6);
       }
       if(names[i].getMove() <= 1.5) { //keeps nameplate in line with bike
         names[i].setMove(2.6);
    }
     }
  }
  
  bike1.display();
  rider1.display();
  bike2.display();
  rider2.display();

    if (mousePressed && (mouseButton == LEFT)) {
      rider1.move();
      bike1.move();
      rider2.move();
      bike2.move();
      bike1.setMove(bike1.getMove()*1);
      rider2.setMove(3);
      bike2.setMove(3);
    }
    
      bike3.display();
      rider3.display();
    if (mousePressed && (mouseButton == RIGHT)) {
      bike3.move();
      rider3.move();
      int[] i = new int[4];
      int ran = int(random(i.length));
      bike3.setMove(ran);
      rider3.setMove(ran);
      if(bike3.getMove() <= 1.5 || rider3.getMove() <=1.5) {
         bike3.setMove(2.3);
         rider3.setMove(2.3);
      }
    }
    if (mousePressed && (mouseButton == CENTER)) {
      bike1.setY(800);
      rider1.setY(850);
      bike2.setY(800);
      rider2.setY(850);
      bike3.setY(800);
      rider3.setY(850);
       for(int i=0, x=50; i<grids.length;i++,x+=65){
         bikeriders[i].setX(x);
         bikeriders[i].setY(920);
         names[i].setY(920);
         names[i].setX(x);
       }
    }
    if (keyPressed && (key == 'o' || key == 'O')){
      background(0);
      textSize(20);
      options.display();
    }
}

/////--------------METHODS--------------/////
     
void finishLine(){ //draws start/finish flag effect
  noStroke();
  for (int x = 0; x < 140; x++){  // set xcoord to 0, runs 80 times (draws 80 columns of squares)
  for (int y = 0; y < 4; y++){ // loops inside the above loop 6 times each time x increments (draws 6 rows of squares)
    
    if((x + y + 1) % 2 == 0) // if x + y + 1 = even, the number is even and fill black
      fill(0);
    else                       // else the number is odd and fill white
     fill(255);
     rect(x*10,y*10,10,10);
    }
  }
}



void Lines(int x, int lineLength) { // draws road lines
  for (int y = 60; y < 900; y += 70) { // ycoord starts at 60, adds 70 to value until stop condition met (makes lines repeat downwards)
    
    fill(249,250,40);
    rect(x,y,lineLength,lineLength + 30);//left yellow line
    rect(x + 600,y,lineLength,lineLength + 30); //right yellow line
    fill(255);
    rect(x + 300,y,lineLength, lineLength + 30);//middle white line
    }
  }     
       
void apex(int x) {
  for (int y = 0; y < 900; y+=20){
    stroke(1);
    fill(255);
    rect(x,y,30,10);
    fill(255,0,0);
    rect(x,y+10,30,10);
  }
}
