//variable that holds my car images
PImage carImg;
PImage ferrariImg;
//sets the x and y coords for my cars
float carX = 2725;
int carY = 1500;
int ferrariX = 2725;
//boolean that allows my ferrari to move or stay 
boolean ferrari = false;
//variable that holds my plane image
PImage planeImg;
//plane image width, height, and x
int planeHeight = 1500;
int planeWidth = 1125;
int planeX = width/2;
//creates the varible for all the basketball player frames
PImage[] bballframes = new PImage[33];
//creates a speed varible for the car
int carSpeed = 0;
//creates a boolean for if the mose is clicked 
boolean mouseClick = false;
//creates the variable for the flames img
PImage flamesImg;
//sets the flameX value to the followiing number
int flamesX = 2950;
int flamesY = 1550;
//cretes a boolean for if the s key is pressed and is set to false
boolean sKeyPressed = false;
//creates an integer that holds a value for the animationCount/number of frames
int animationCount = 1;
//creates the vaariable that holds the hoop image
PImage hoopImg;
//creates the varible for all the confetti frames
PImage[] confettiframes = new PImage[14];
//tracks the number of goals you have
int goalCount = 0;

void setup()
{
  //sets the size of the screen
  size(2500, 2500);
  
  //sets the shape modes to center
  imageMode(CENTER);
  
  //creates an instance for an image with a file
  carImg = loadImage("car.png");
  ferrariImg = loadImage("ferrari.png");
  planeImg = loadImage("plane flying away.png");
  flamesImg = loadImage("flames.png");
  hoopImg = loadImage("basketball hoop.png");
  
  //increases the number in the name of the frame file by one every time
  for(int i = 0; i < bballframes.length; i++)
  {
    bballframes[i] = loadImage( "image" + (i+1) + ".png" );
  }
  
  //increases the number in the name of the frame file by one every time
  for(int i = 0; i < confettiframes.length; i++)
  {
    confettiframes[i] = loadImage( "frame_" + i + "_delay-0.09s.png" );
  }
  

}


void draw()
{
  //sets the mode for the rectagle to corners
  rectMode(CORNERS);
  
  //makes the background light blue
  background(#96E1F7);
  
  //draw the grass
  fill(#4EBF17);
  rect(0, 1000, 2500, 2725);
  
  //draws the road
  fill(125);
  rect(0, 1500, 2500, 1700);
  
  //draws the basketball court
  fill(125);
  quad(200, 1200, 1800, 1200, 2000, 1400, 100, 1400);
  fill(100);
  quad(100, 1400, 2000, 1400, 2000, 1500, 100, 1500);
  
  //draws the right building
  fill(#5F4A03);
  rect(2200, 500, 2725, 1500); 
  quad(2000, 550, 2200, 500, 2200, 1500, 2000, 1315);
  
  //windows for the building
  //sets rect mode to center
  rectMode(CENTER);
  
  //sets window color to gray
  fill(#D3D2CF);
  
  //draws cluster 1 of windows
  rect(2250, 550, 60, 60);
  rect(2320, 550, 60, 60);
  rect(2390, 550, 60, 60);
  rect(2460, 550, 60, 60);
  rect(2250, 620, 60, 60);
  rect(2320, 620, 60, 60);
  rect(2390, 620, 60, 60);
  rect(2460, 620, 60, 60);
  //draws cluster 2 of windows
  rect(2250, 725, 60, 60);
  rect(2320, 725, 60, 60);
  rect(2390, 725, 60, 60);
  rect(2460, 725, 60, 60);
  rect(2250, 800, 60, 60);
  rect(2320, 800, 60, 60);
  rect(2390, 800, 60, 60);
  rect(2460, 800, 60, 60);
  //draws cluster 3 of windows
  rect(2250, 890, 60, 60);
  rect(2320, 890, 60, 60);
  rect(2390, 890, 60, 60);
  rect(2460, 890, 60, 60);
  rect(2250, 965, 60, 60);
  rect(2320, 965, 60, 60);
  rect(2390, 965, 60, 60);
  rect(2460, 965, 60, 60);
  //draws cluster 4 of windows
  rect(2250, 1050, 60, 60);
  rect(2320, 1050, 60, 60);
  rect(2390, 1050, 60, 60);
  rect(2460, 1050, 60, 60);
  rect(2250, 1120, 60, 60);
  rect(2320, 1120, 60, 60);
  rect(2390, 1120, 60, 60);
  rect(2460, 1120, 60, 60);
  //draws cluster 5 of windows
  rect(2250, 1205, 60, 60);
  rect(2320, 1205, 60, 60);
  rect(2390, 1205, 60, 60);
  rect(2460, 1205, 60, 60);
  rect(2250, 1275, 60, 60);
  rect(2320, 1275, 60, 60);
  rect(2390, 1275, 60, 60);
  rect(2460, 1275, 60, 60);
  
  //draws building door
  rectMode(CORNERS);
  rect(2285, 1350, 2420, 1500); 
  line(2355, 1350, 2355, 1500);
  
  //draws the plane
  image(planeImg, planeX, 200, planeWidth, planeHeight);
  
  //if the plane is at its biggest but still larger than 0, it should decrease
  // the width and height of the plane and increase the x value of the plane
  if (planeWidth <= 1125 && planeHeight <= 1500 && planeWidth > 0 && planeHeight > 0)
  {
    planeWidth = planeWidth -6;
    planeHeight = planeHeight -8;
    planeX = planeX +10;
  }
  
  //if the plane w and h get to zero, it stays that way
  if (planeWidth < 0 && planeHeight < 0)
  {
    planeHeight = 0;
    planeWidth = 0;
  }
  
  //if ferrari is false, draw the normal car and make it move
  if(ferrari==false)
  {
    //draw the car
    image(carImg, carX, carY, 475, 250);
    carX = carX -5;
  }
  
  //if carX is less then negative 500, then set the ferrari boolean
  //to true and the carX to 2725
  if(carX < -500)
  {
    ferrari = true;
    carX = 2725;
  }
  
  //ferrari equals true, then draw the ferrari
  //and make it cross the screen faster then the normal car
  if(ferrari==true)
  {
    image(ferrariImg, ferrariX, carY, 475, 250);
    ferrariX = ferrariX -8;
  }
  
  //if the ferrari get to the end of the screen, set ferrari to false and ferrariX to 2725
  if (ferrariX < -500)
  {
    ferrari = false;
    ferrariX = 2725;
  }
  
  //if mouseClick is true and ferrari is true then add carSpeed to carX
  if (mouseClick==true && ferrari==false)
  {
    carX = carX +carSpeed;
  }
  
  //if mouseClick is true and ferrari is true then add carSpeed to ferrariX
  if (mouseClick==true && ferrari==true)
  {
    ferrariX = ferrariX +carSpeed;
  }
   
  //if mouseClick is true, draw the flames img  
  if (mouseClick==true)
  {
    image(flamesImg, carX + 375, flamesY, 300, 300);
  }
  
  ////if mouseClick is true and ferrari is true, draw the flames img 
  if (mouseClick==true && ferrari==true)
  {
    image(flamesImg, ferrariX + 400, flamesY, 300, 300);
  }
  
  //draw the basketball net
  //draw the hoop for the basketball net
  image(hoopImg, 1690, 1075, 100, 100);
  //draw the backboard for the basketall net
  rect(1740, 1000, 1750, 1100);
  //draws the pole for the basketball net
  rect(1750, 1035, 1825, 1060);
  rect(1800, 1035, 1825, 1300);
  
  //if sKeyPressed is true, draw the basketball player and increase animation count
  if (sKeyPressed==true)
  {
    //draws the basketball player
    image( bballframes[animationCount%32], 1500, 1500, 1500, 1500);
    animationCount ++;
    
    //if the animationcount mode is equal 0, set sKeyPressed to false and set animation count value to 1
    if (animationCount%32==0)
    {
      sKeyPressed = false;
      animationCount = 1;
    }
  }
  
  //else(if the previous if statement is not true, draw the first frame of the basketball player
  else
  {
    //draws the basketball player
    image( bballframes[0], 1500, 1500, 1500, 1500);
  }
  
  //if the animation count==28, draw the confetti gif
  if(animationCount==28)
  {
    //draws the confetti gif
    image( confettiframes[animationCount%14], 1700, 1100, 500, 500);
  }
  
  fill(0);
  textSize(50);
  //displays the goal count text on the screen
  text("number of \n buckets:", 1200, 500);
  //displays the actual goal counter info
  text(goalCount, 1425, 580);
  
  if(animationCount==28)
  {
    goalCount ++; 
  }
  

}


void mousePressed()
{
  //if the mouse is pressed, it sets mouseClick to true and takes away 30 from the carSpeed value
  if (mousePressed)
  {
    mouseClick = true;
    carSpeed = carSpeed -60;
  }
}


void keyPressed()
{
  //if the key 's' is pressed, it sets th boolean "sKeyPressed" to true
  if (key == 's')
  {
    sKeyPressed = true;
  }
}

/**
1)  My four (or more) text, images, and/or shapes are: the basketball player, the rectangle buildings in the background, the car that moves across the screen, the plane that flies away, and the fire

2)  My one (or more) self-taught animation is/are (PLEASE INCLUDE LINKS): 
    -How to make gifs in processing
    http://www.science.smith.edu/dftwiki/index.php/Processing_Tutorial_--_Showing_Animated_Gifs
    -animating with piskel

3)  My four (or more) animations that were not learned from online tutorials are: moving an object, shrinking an object, something happening on a keypress, and something happening on a mouseclick. 

4)  When you press the  s  key, this happens: shoots the ball

5)  When you click the mouse, this happens: the car goes really fast and has fire behind it

*/
