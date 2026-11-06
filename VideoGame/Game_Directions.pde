//Game Directions and Tracking

int itemCollect = 0;
int deathCount = 0;

void gameDirections() {
  fill(170);
  rect(0, 700, width, 100);
  
  fill(0); //directions
  textSize(20);
  text("Move the butterfly to collect the butterfly babies and exit the maze to win  (don't abandon the babies)", 2, 730);
  text("Butterfly Babies collected: " + itemCollect + "/4", 2, 760);
  text("Times died: " + deathCount + "/5", 2, 790);
  
  //textSize(30); //exit arrow
  //text("-->", 950, 355);
  
  if(imgBX >= 995 && imgBY >= 320 && itemCollect == 4) { 
   // size(200, 200);
    textSize(30);
    fill(0);
    text("you saved the babies!! <3", 680, 760); 
  }
  if(imgBX >= 995 && imgBY >= 320 && itemCollect != 4) {    
    textSize(30);
    fill(0);
    text("you abandoned them...", 680, 760); 
  }
}

void endGame() {
  if(deathCount >= 5) {
    textSize(200);
    fill(255, 0, 0);
    text("GAME OVER", 10, 400);
    speed = 0;
  }
}
