//Movement and Animation Functions

int ix=0, iy=0; //movement variables
int speed = 5;

int imgBX, imgBY; //starter position variables for butterfly
int imgSX, imgSY; //starter position variables for snake

int frameB = 0; //animation variables butterfly
int frameWidthB, frameHeightB;
int colsB = 3;
int rowsB = 4;
int currentRowB = 0;

int frameS = 0; //animation variables snake
int frameWidthS, frameHeightS;
int colsS = 3;
int rowsS = 4;
int currentRowS;
int speedS = 2;

color blockedColor = color(10, 70, 10); //blocked color for maze lines

void moveButterfly() { //function to consolidate movement functions for butterfly
  imgBX+=ix;
  imgBY+=iy;
}

void moveSnake() { //function to automate snake movement
  imgSX += speedS;

  if(imgSX == 500) {
    //go left
    currentRowS = 3;
    speedS = -abs(speedS);
  } 
  if(imgSX == 170) {
    //go right
    currentRowS = 1;
    speedS = abs(speedS);
  }
}

void keyPressed() {
  pressed(key=='w', key=='s', key=='a', key=='d'); 
  if(key == 'w') currentRowB = 0;
  if(key == 's') currentRowB = 2;
  if(key == 'a') currentRowB = 3;
  if(key == 'd') currentRowB = 1;
}
void keyReleased() {
  released(key=='w', key=='s', key=='a', key=='d');
  frameB = 0;
}
void pressed(boolean up, boolean down, boolean left, boolean right) {
  if (up) iy = -1*speed; 
  if (down) iy = 1*speed;
  if (left) ix = -1*speed;
  if (right) ix = 1*speed;
}
void released(boolean up, boolean down, boolean left, boolean right) {
  if (up) iy = 0;
  if (down) iy = 0;
  if (left) ix = 0;
  if (right) ix = 0;
}

void animateFunction() { //function for animating the butterfly and snake sprites (separated out so i know where it is/what it does)
 
  int colB = frameB%colsB; //butterfly codeblock
  int bx = colB*frameWidthB;
  int by = currentRowB*frameHeightB;
  PImage currentFrameB = imgButterfly.get(bx, by, frameWidthB, frameHeightB); 
  image(currentFrameB, imgBX, imgBY, imgButterfly.width*0.5, imgButterfly.height*0.5); 
  if (frameCount % 4 == 0) { //frame choice butterfly
    frameB = (frameB + 1) % colsB;
  }
  
  int colS = frameS%colsS; //snake codeblock
  int sx = colS*frameWidthS;
  int sy = currentRowS*frameHeightS;
  PImage currentFrameS = imgSnake.get(sx, sy, frameWidthS, frameHeightS);
  image(currentFrameS, imgSX, imgSY, imgSnake.width*0.5, imgSnake.height*0.5);
  if (frameCount % 5 == 0) {
    frameS = (frameS + 1) % colsS;
  }
}

void butterflyHitbox() { //function for butterfly hitbox so I dont have to copypaste every time
  leftB = imgBX - (imgButterfly.width*0.12); // butterfly hitbox
  rightB = imgBX + (imgButterfly.width*0.12);
  topB = imgBY - (imgButterfly.height*0.12);
  bottomB = imgBY + (imgButterfly.height*0.12);
}

boolean checkBlockedSnake(float nextBX, float nextBY, float nextSnX, float nextSnY) { //function to check snake collision
float leftB = nextBX - (imgButterfly.width*0.12); // butterfly hitbox
float rightB = nextBX + (imgButterfly.width*0.12);
float topB = nextBY - (imgButterfly.height*0.12);
float bottomB = nextBY + (imgButterfly.height*0.12);

float leftSn = nextSnX - (imgSnake.width*0.15); //snake hitbox
float rightSn = nextSnX + (imgSnake.width*0.15);
float topSn = nextSnY - (imgSnake.height*0.15);
float bottomSn = nextSnY + (imgSnake.height*0.15);

boolean collisionBSnX = ((rightB >= leftSn) && (leftB <= rightSn));
boolean collisionBSnY = ((bottomB >= topSn) && (topB <= bottomSn));

return collisionBSnX && collisionBSnY;
}


boolean checkBlockedWalls(float nextBX, float nextBY) { //function to block the maze walls based on color
  int checkPoints = 4;
  float[] checkBX = {nextBX, nextBX - (imgButterfly.width*0.15), nextBX + (imgButterfly.width*0.15), nextBX}; //left, right, center points
  float[] checkBY = {nextBY, nextBY + (imgButterfly.height*0.15), nextBY - (imgButterfly.height*0.15), nextBY}; //bottom, top, center points
  
  for(int i = 0; i < checkPoints; i++) {
    
    color pixelColor = get(int(checkBX[i]), int(checkBY[i])); //check coordinates where butterfly is
    
    //accounts for variation, only doing blockedColor doesnt work
    if(abs(red(pixelColor) - red(blockedColor)) < 5 && abs(green(pixelColor) - green(blockedColor)) < 5 && abs(blue(pixelColor) - blue(blockedColor)) < 5) { 
      return true; //collision
    }
  }
  return false; //no collision
}
