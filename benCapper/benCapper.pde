void setup() {
  size(800,500);
  background(30,210,20);
  println("Welcome to the races. \nPlease, no track invaders, we must not have a repeat of last year!");
  println("We'd also like to wish a special good luck to Mary who was seconds away from winning the race before breaking down inches from the finish line in last years event!");
  println("Heres the footage in case you missed it.");
}

void mousePressed() {
  if (mouseButton == RIGHT) { // Reset right track
    e = 600; 
    q = 1500;
    u = 640;
    v = 2100;
    x = 560;
    y = 1800;
  }
  if(mouseButton == LEFT) { // Reset left track
    h = 50;
    g = 150;
    b = 500;
    k = -50;
    n = 550;
    s = 295;
    t = 550;

  }
}
String track1 = "Left click to reset \nTrack 1";
String track2 = "Right click to reset\n Track 2";
void draw() {
  background(30,210,20);
  finishLine();
  greenFiller(0,100);
  road(100,60,250);
  Lines(110,10);
  Lines(460,10);
  fill(0);
  name(track1, 50,10);
  name(track2, 750,10);
  
   
  //-----Bike 1 movement (MARY)-----
  
  if (e > 200){  //if ycoord > 200
    e = e - .8; //lower ycoordinate by 2 (makes shapes move on y axis)
  }
  else if (e > 100) {
    e = e - .2; //bike starts again from 600 
  }
  else {
    e = 99;
  }
  bikeGuy1(d,e,shapeLength); //calls bikeGuy1 method - Mary
  
  
 //------Bike 2 movement (BOB)------
 
  if (b > -50){
    b = b - 2.6; //faster than Bike 1
  }
  bikeGuy2(a,b,shapeLength); //calls bikeGuy2 - Bob
 
 
 //------Bike 3 Movement (STIG)------
 
  if (h < 100){ //if ycoord is less than 100
    h = h + .6; //+.6 (Bike goes straight)
  }
  else if (h >= 100 && g < 190){ //or if ycoord is more than or equal to 300 AND xcoord is less than 190
    h += 1; //increase ycoord by 1
    g += 2.1; //increase xcoord by 2.1 (Bike swirves)
    fill(0);
    name(stigSays1,g,h + 15);
  }         
  else if (h < 300){ // if ycoord is less than 550 (offscreen (bottom) - to ensure bike disappears)
    h++; //(bike goes straight again)
    fill(255,255,255);
    name(winner,g,h - 103);
    fill(0);
    name(stigSays2,g,h + 15);
  }
  else if (h < 570) {
    h++;
    name(winner,g,h - 103);
    fill(0);
    name(stigSays3,g,h + 15);
  }
  bikeGuy3(g,h,shapeLength); //calls bikeGuy3 - Stig

//---------Bike 4 Movement (TIMMY)--------

  if (k < 0) { //if ycoord is less than 0 (starts at -50)
    k += .3;     //moves bike slowly until ycoord = 0
  }
  else if ((k < 10)&&(j < 220)){ // or if ycoord < 10 AND xcoord < 220
    k+=.5;                       //moves bike fast to right and forward until ycoord = 10 or xcoord is more than 219
    j+=3;                       
  }
  else if ((k <= 180 ) && ( j >= 160)) { // or if y coord < or = 180 AND xcoord > or = 160
    k++;                              // moves bike left and forward, j>160 stops from going offroad
    j--;                             // k<=180 would stop moving forward
    fill(0);
    name(timmySays1,j,k + 4);
  }
  else if ((k >= 170)&&(k <= 250)&&(j >= 159)){ // moves bike slowly to the right and forward
    k++;
    j+=.1;
    name(second,j,k - 100);
  }
  else if (k > 250) {
    fill(255);
    name(second,j,k - 100);
    fill(0);
    name(timmySays3,j,k + 5);
    k++;
    j+=.1;
  }
  else { // makes sure bike is always moving forward
    k+=1;
    name(second,j,k - 100);
  }
  if (k > 550) { //resets xcoordinate
    j = 165;
  }
  
 bikeGuy4(j,k,shapeLength);
 
 //--------Police Bike---------
 
  if ((b < 200)&&(n > -60)) { // goes straight
    n-=3;
  }
  police(m,n,shapeLength);
 
 //--------Police Bike2---------
 
  if ((b < 200)&&(t > -60)) { //moves to right after y coord = 300
    t-=3;
  if (t < 300) {
    s+=.2;
   }
 }

   police2(s,t,shapeLength);
 
 
 //-------Bike 5 (LUCY)--------
 
  if (q > -500) {
    q = q - 2.5;
    bikeGuy5(p,q,shapeLength);
 }
 
 //-------Bike 6 (Diane)--------
 
  if (v > -500) { //moves left when ycoord = 350 to avoid mary
    v = v - 2.6;
  if (v < 350) {
    u-=.4;
   }
   bikeGuy6(u,v,shapeLength);
 }
   
 
  //-------Bike 7 (Kelly)--------
 
 if (y > -500) {
   y = y - 2.6;
   bikeGuy7(x,y,shapeLength);
 }
 
} //end of draw


//---------Methods-------------


void road(int x, int y, int roadLength) { //draws rects for the roads
  fill(200);
  rect(x,y,roadLength,roadLength + 190);
  rect(x+350,y,roadLength,roadLength + 190);
}

void finishLine(){ //draws start/finish flag effect
  noStroke();
  for (int x = 0; x < 80; x++){  // set xcoord to 0, runs 80 times (draws 80 columns of squares)
  for (int y = 0; y < 6; y++){ // loops inside the above loop 6 times each time x increments (draws 6 rows of squares)
    
    if((x + y + 1) % 2 == 0) // if x + y + 1 = even, the number is even and fill black
      fill(0);
    else                       // else the number is odd and fill white
     fill(255);
     rect(x*10,y*10,10,10);
    }
  }
}

void Lines(int x, int lineLength) { // draws road lines
  for (int y = 60; y < 500; y += 70) { // ycoord starts at 60, adds 70 to value until stop condition met (makes lines repeat downwards)
    
    fill(249,250,40);
    rect(x,y,lineLength,lineLength + 30);//left yellow line
    rect(x+220,y,lineLength,lineLength + 30); //right yellow line
    fill(255);
    rect(x + 110,y,lineLength, lineLength + 30);//middle white line
    }
  }


void greenFiller(int y, int lineLength) { //draws 3 green boxes over checkered effect for grass effect
  for (int x = 0; x < 801; x += 350) { //xcoord starts at 0, while less than 801, add 350
    fill(30,210,20); //fill green
    rect(x,y,lineLength,lineLength); //draw green square to cover excess check pattern (starts at 0,0)
  }
}

void fillStroke(int red, int green, int blue) { //lessens repeat code
  fill(red,green,blue);
  stroke(red,green,blue);
}

void name(String s, float a, float b) { //name of rider (moves with bike, requires global variable for yCoordinate)
  textAlign(CENTER);
  textSize(11);
  text(s,a,b + 40);
}

void riderRight(float d, float e) { //draws person (going north)
  line(d,e - 5,d,e +10); //body
  line(d,e,d - 5,e - 2); //left arm
  line(d,e,d + 5,e - 2); //right arm
  line(d,e + 10,d + 5,e + 5);//right leg
  line(d - 5,e + 5,d - 5, e + 9);//right foot
  line(d,e + 10,d - 5,e + 5);//left leg
  line(d + 5,e + 5,d + 5,e + 9);//left foot 
}

void riderLeft(float g, float h) { //draws person (going south)
  line(g,h + 5,g,h - 10); //body
  line(g,h,g + 5,h + 2); //left arm
  line(g,h,g - 5,h + 2); //right arm
  line(g,h - 10,g - 5,h - 5);//right leg
  line(g + 5,h - 5,g + 5, h - 9);//right foot
  line(g,h - 10,g + 5,h - 5);//left leg
  line(g - 5,h - 5,g - 5,h - 9);//left foot
}

void bikeMain(float d, float e, int shapeLength) {
  ellipse(d,e,shapeLength/2,shapeLength); //main part of bike

}

void bikeTyres(float d, float e, int shapeLength) {
  ellipse(d,e - 25,shapeLength/10,shapeLength/4);//front tyre
  ellipse(d,e + 25,shapeLength/10,shapeLength/4);//back tyre
}
  


//-------BIKE 1 (Right Track)--------
int shapeLength = 40;
float d = 680.0;
float e = 600.0;
String f = "Mary";
void bikeGuy1( float d, float e, int shapeLength) { 
  fillStroke(0,0,0); //fill shape black
  bikeMain(d,e,shapeLength);
  bikeTyres(d,e,shapeLength);
  fillStroke(250,187,50); //orange
  ellipse(d,e - 10,shapeLength/4,shapeLength/4); //helmet
  riderRight(d,e);
  fillStroke(255,255,255);
  name(f,d,e);
}

//--------BIKE 2(Left Track)---------
float a = 150.0;
float b = 500.0;
String c = "Bob";
void bikeGuy2( float a, float b, int shapeLength) { 
  fillStroke(237,50,50); //red
  bikeMain(a,b,shapeLength); //main part of bike
  fillStroke(0,0,0);//black
  bikeTyres(a,b,shapeLength);
  fillStroke(0,0,0); //black
  ellipse(a,b - 10,shapeLength/4,shapeLength/4); //helmet
  fillStroke(255,255,255); //white
  riderRight(a,b);
  name(c,a,b);
}

//--------BIKE 3 (Left Track)---------
float g = 150.0;
float h = 50.0;
String i = "Stig";
String stigSays1 = "Hey!\n watch out! ";
String stigSays2 = "Idiot!";
String stigSays3 = "Phew, close one";
String winner = "1st Place";
void bikeGuy3( float g, float h, int shapeLength) {
  fillStroke(255,255,255); //white
  bikeMain(g,h,shapeLength);
  fillStroke(0,0,0);//black
  bikeTyres(g,h,shapeLength);
  fillStroke(77,206,205); //blue
  ellipse(g,h + 10,shapeLength/4,shapeLength/4); //helmet
  fillStroke(73,90,227); //deepblue
  riderLeft(g,h);
  fillStroke(255,255,255);
  name(i,g,h - 80);
}

//--------BIKE 4 (Left Track)---------
float j = 165.0;
float k = -50.0;
String l = "Timmy";
String timmySays1 = "What the...";
String timmySays3 = "I wonder what\nthat was about";
String second = "2nd Place";
void bikeGuy4( float g, float h, int shapeLength) {
  fillStroke(227,88,235); //bike - purple
  bikeMain(g,h,shapeLength);
  fillStroke(0,0,0);//tyres - black
  bikeTyres(g,h,shapeLength);
  fillStroke(126,126,116); //helmet - gray
  ellipse(j,k + 10,shapeLength/4,shapeLength/4);
  fillStroke(229,229,44); //person - yellow
  riderLeft(j,k);
  fillStroke(255,255,255);//name - white
  name(l,j,k - 80);
}

//--------POLICE BIKE 1 (Left Track)---------
float m = 260.0;
float n = 550.0; 
String o = "Police";
void police( float n, float m, int shapeLength) { 
  fillStroke(255,255,255); //white
  bikeMain(n,m,shapeLength); //main part of bike
  fillStroke(0,0,200);//black
  bikeTyres(n,m,shapeLength);
  fillStroke(0,0,200); //black
  ellipse(n,m - 10,shapeLength/4,shapeLength/4); //helmet
  fillStroke(200,0,0); //white
  riderRight(n,m);
  fillStroke(0,0,200);
  name(o,n,m + 6);
}

//--------POLICE BIKE 2 (Left Track)---------
float s = 295.0;
float t = 550.0; 
void police2( float s, float t, int shapeLength) { 
  fillStroke(255,255,255); //white
  bikeMain(s,t,shapeLength); //main part of bike
  fillStroke(0,0,200);//black
  bikeTyres(s,t,shapeLength);
  fillStroke(0,0,200); //black
  ellipse(s,t - 10,shapeLength/4,shapeLength/4); //helmet
  fillStroke(200,0,0); //white
  riderRight(s,t);
  fillStroke(0,0,200);
  name(o,s,t + 6);
}

//--------Bike 5 (Right Track)---------
float p = 600.0;
float q = 1500.0; 
String r = "Lucy";
void bikeGuy5( float p, float q, int shapeLength) { 
  fillStroke(175,118,32); //brown
  bikeMain(p,q,shapeLength); //main part of bike
  fillStroke(0,0,0);//black
  bikeTyres(p,q,shapeLength);
  fillStroke(0,0,0); //black
  ellipse(p,q - 10,shapeLength/4,shapeLength/4); //helmet
  fillStroke(255,255,255); //white
  riderRight(p,q);
  fillStroke(0,0,200);
  fill(255);
  name(r,p,q + 6);
}

//--------Bike 6 (Right Track)---------
float u = 640.0;
float v = 2100.0; 
String w = "Diane";
void bikeGuy6( float u, float v, int shapeLength) { 
  fillStroke(59,234,230); //turquoise
  bikeMain(u,v,shapeLength); //main part of bike
  fillStroke(0,0,0);//black
  bikeTyres(u,v,shapeLength);
  fillStroke(208,117,242); //purple
  ellipse(u,v - 10,shapeLength/4,shapeLength/4); //helmet
  fillStroke(0,0,0); //white
  riderRight(u,v);
  fillStroke(0,0,200);
  fill(255);
  name(w,u,v + 6);
}

//--------Bike 7 (Right Track)---------
float x = 560.0;
float y = 1800.0; 
String z = "Kelly";
void bikeGuy7( float x, float y, int shapeLength) { 
  fillStroke(81,206,117); //green
  bikeMain(x,y,shapeLength); //main part of bike
  fillStroke(0,0,0);//black
  bikeTyres(x,y,shapeLength);
  fillStroke(0,0,0); //black
  ellipse(x,y - 10,shapeLength/4,shapeLength/4); //helmet
  fillStroke(0,0,0); //black
  riderRight(x,y);
  fillStroke(0,0,200);
  fill(255);
  name(z,x,y + 6);
}
