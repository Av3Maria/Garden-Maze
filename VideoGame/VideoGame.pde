//Butterfly Maze
//Current Version (4-17-25)

void draw() { //main function
  background(94, 113, 106);
  mazeLines();
  gameDirections();
  butterflyHitbox();
  
  if(!checkBlockedWalls(imgBX + ix, imgBY + iy)) { //call function to check for collision, call movement function if no collision
    moveButterfly(); 
  }
  
  moveSnake(); //codeblock for snake-butterfly collision check
  if(checkBlockedSnake(imgBX + ix, imgBY + iy, imgSX + speedS, imgSY + speedS)) {
     imgBX = 30;
     imgBY = 350;
     deathCount++;
  }
  
  for(Flower fl : flowers) { //call flower class
    fl.setFlowers();
  }
  
  animateFunction();
  
  for(Plant p : plants) {
    p.setPlants();
  }
  
  inWeb = false;
  for (Spiderweb sw : spiderwebs) { //call spiderweb class
        sw.setSpiderweb();
  }
  SpiderwebCollisionAll(); //call function for spiderweb collision
  if (inWeb) {
    speed = 2;
  } else {
    speed = 5;
  }
  spiderwebLines(); //call function for spiderweb lines
  
   for (Spider s : spiders) { //call spider class
        s.setSpider();
        checkBlockedSpider(s);
  }
  
  tinyButterflyCollection(); //call collection function for tiny butterflies
  
  endGame(); //function to test for game end
}
