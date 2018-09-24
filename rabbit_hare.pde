//an image variable for the tortoise
PImage tortoise;
//an image variable for the hare
PImage hare;

//variables that keep track of how many times a and l are pressed
int aClicks = 0;
int lClicks = 0;

void setup() {

  //sets the screen size to fullscreen
  fullScreen(); 

  //sets the background colour
  background(0);

  //load an image for the tortoise variable
  tortoise = loadImage("derpTurtle.jpg");

  //load an image for the hare variable
  hare = loadImage("bunny mans.jpg");

  //sets the starting places for the tortoise and hare
  image(tortoise, width/8, height/12, width/8, height/8);
  image(hare, width/1.5, height/12, width/8, height/8);
}
void draw() {

  //sets the background
  background(0);

  //sets the finish line
  stroke(255);
  strokeWeight(20);
  line(100, 2500, 400, 2500);

  //sets the text and finish line for the turtle
  textSize(100);
  if (aClicks >= 1620) {
    text("Turtle Wins!", width/2, height/2);
    lClicks = 0;
  }
  
  //sets the text and finish line for the "wabbit"
  if (lClicks >= 1620) {
    text("Wabbit Wins!", width/2, height/2);
    aClicks = 0;
  }


  //putting all of the variables for the tortoise to use
  image(tortoise, width/8, aClicks, width/8, height/8);

  //putting all of the hare variables to use
  image(hare, width/1.5, lClicks, width/8, height/8);
}
void keyPressed() {

  //making it so that when "A" is pressed the turtle moves down 20 pixels
  if (key == 'a') {
    aClicks += 20;
  }

  //making it so that when "l" is pressed the hare moves down 20 pixels
  if (key == 'l') {
    lClicks += 20;
  }
}
