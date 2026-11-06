//Image Setup and Display

//image variable list
PImage imgButterfly;  //main butterfly
PImage imgTinyButterflyPurple;
PImage imgTinyButterflyPink;
PImage imgTinyButterflyBlue;
PImage imgTinyButterflyYellow;
PImage imgSpider;
PImage imgSnake;
PImage imgDaisy;
PImage imgRose;
PImage imgSunflower;
PImage imgPurpleFlower;
PImage imgBluebells;
PImage imgGrass;
PImage imgGrassFlowers;
PImage imgHangingPlants;
PImage imgTree;
PImage imgSpiderwebRightUpper;
PImage imgSpiderwebRightLower;
PImage imgSpiderwebLeftUpper;
PImage imgSpiderwebLeftLower;

int tbPuX, tbPuY; //tiny butterfly xy variables
int tbPiX, tbPiY;
int tbBX, tbBY;
int tbYX, tbYY;

float leftB, rightB, topB, bottomB;

void setup() {
  size(1000,800);
  imageMode(CENTER);
  
  imgBX = 30; //butterfly starting coordinates
  imgBY = 350;
  
  tbPuX = 100; //tiny butterfly starting coordinates
  tbPuY = 150;
  tbPiX = 830;
  tbPiY = 280;
  tbBX = 95;
  tbBY = 600;
  tbYX = 960;
  tbYY = 40;
  
  imgSX = 490; //snake starting coordinates
  imgSY = 245;
  
  //image load-in codeblock
  imgButterfly = loadImage("butterfly.png"); //drew myself
  imgTinyButterflyPurple = loadImage("tinyButterflyPurple.png"); //drew myself
  imgTinyButterflyPink = loadImage("tinyButterflyPink.png"); //drew myself
  imgTinyButterflyBlue = loadImage("tinyButterflyBlue.png"); //drew myself
  imgTinyButterflyYellow = loadImage("tinyButterflyYellow.png"); //drew myself

  imgSnake = loadImage("snake-NESW.png"); //found online free
  imgSpider = loadImage("happy_spider.png"); //found online free
  
  imgDaisy = loadImage("daisy.png"); //drew myself
  imgRose = loadImage("rose.png"); //drew myself
  imgSunflower = loadImage("sunflower.png"); //drew myself
  imgPurpleFlower = loadImage("purpleFlower.png"); //drew myself
  imgBluebells = loadImage("bluebells.png"); //drew myself
  imgGrass = loadImage("grass.png"); //drew myself
  imgGrassFlowers = loadImage("grassFlowers.png"); //drew myself
  imgHangingPlants = loadImage("hangingPlants.png"); //drew myself
  imgTree = loadImage("tree.png"); //drew myself
  
  imgSpiderwebRightUpper = loadImage("spiderweb_rightCornerUpper.png"); //drew myself
  imgSpiderwebRightLower = loadImage("spiderweb_rightCornerLower.png"); //drew myself
  imgSpiderwebLeftUpper = loadImage("spiderweb_leftCornerUpper.png"); //drew myself
  imgSpiderwebLeftLower = loadImage("spiderweb_leftCornerLower.png"); //drew myself
  
  
  frameWidthB = imgButterfly.width/colsB; //image animation setup Butterfly
  frameHeightB = imgButterfly.height/rowsB;
  
  frameWidthS = imgSnake.width/colsS; //image animation setup Snake
  frameHeightS = imgSnake.height/rowsS;
  
  
  float[][] spiderPlacement = { //spider list and placement codeblock
    {492, 463, 50},
    {217, 460, 40},
    {275, 595, 45},
  };
  spiders = new Spider[spiderPlacement.length];
  for(int sp = 0; sp < spiderPlacement.length; sp++) {
        float x = spiderPlacement[sp][0];
        float y = spiderPlacement[sp][1];
        float s = spiderPlacement[sp][2]; // Size of the spider
        spiders[sp] = new Spider(x, y, s, imgSpider);
  }

  SpiderwebData[] spiderwebPlacement = { //spiderweb list and placement codeblock
    new SpiderwebData(424, 374, 64, imgSpiderwebLeftUpper), //1
    new SpiderwebData(494, 427, 52, imgSpiderwebRightUpper),  
    new SpiderwebData(235, 386, 88, imgSpiderwebLeftUpper), //2  
    new SpiderwebData(250, 570, 118, imgSpiderwebRightLower), //3
    new SpiderwebData(276, 508, 70, imgSpiderwebRightUpper), //4
    new SpiderwebData(155, 490, 52, imgSpiderwebRightUpper), //5 
    new SpiderwebData(166, 594, 70,imgSpiderwebLeftLower), //6
    new SpiderwebData(285, 450, 50, imgSpiderwebRightLower), //7 (top of 4)
    new SpiderwebData(145, 430, 70, imgSpiderwebRightLower), //8
    new SpiderwebData(105, 550, 70, imgSpiderwebLeftUpper), //9 
    new SpiderwebData(91, 495, 40, imgSpiderwebLeftLower), //10 
    new SpiderwebData(493, 665, 50, imgSpiderwebRightLower), //11
    new SpiderwebData(350, 661, 40, imgSpiderwebLeftUpper), //12
    new SpiderwebData(200, 669, 40, imgSpiderwebLeftLower), //13
    new SpiderwebData(318, 656, 30, imgSpiderwebRightUpper), //14
    new SpiderwebData(360, 600, 80, imgSpiderwebLeftUpper), //15
    new SpiderwebData(350, 530, 60, imgSpiderwebLeftLower), //16
    new SpiderwebData(355, 420, 50, imgSpiderwebRightLower), //17
    new SpiderwebData(425, 470, 50, imgSpiderwebRightLower), //18
    new SpiderwebData(430, 515, 40, imgSpiderwebRightUpper), //19
    new SpiderwebData(420, 600, 60, imgSpiderwebRightLower), //20
  };
  spiderwebs = new Spiderweb[spiderwebPlacement.length];
  for(int sw = 0; sw < spiderwebPlacement.length; sw++) {
    SpiderwebData swd = spiderwebPlacement[sw];
    spiderwebs[sw] = new Spiderweb(swd.x, swd.y, swd.size, swd.img);
  }
  
  FlowerData[] flowerPlacement = { //plants and flowers codeblock
    new FlowerData(835, 410, 100, imgDaisy), //end of maze down
    new FlowerData(860, 435, 60, imgDaisy),
    new FlowerData(960, 450, 40, imgDaisy),
    new FlowerData(700, 340, 100, imgDaisy), //near end of maze down
    new FlowerData(715, 360, 60, imgDaisy),
    new FlowerData(690, 370, 40, imgDaisy),
    new FlowerData(680, 380, 20, imgDaisy),
    new FlowerData(722, 388, 20, imgDaisy),
    new FlowerData(70, 250, 40, imgRose), //near snake down
    new FlowerData(90, 230, 100, imgRose),
    new FlowerData(120, 240, 80, imgRose),
    new FlowerData(230, 250, 50, imgRose),
    new FlowerData(250, 230, 100, imgRose),
    new FlowerData(280, 250, 40, imgRose),
    new FlowerData(295, 255, 20, imgRose),
    new FlowerData(380, 250, 70, imgRose),
    new FlowerData(400, 230, 120, imgRose),
    new FlowerData(440, 240, 100, imgRose),
    new FlowerData(872, 445, 40, imgRose), //end of maze down
    new FlowerData(980, 425, 100, imgRose),
    new FlowerData(820, 420, 100, imgSunflower),
    new FlowerData(890, 400, 125, imgSunflower),
    new FlowerData(915, 425, 80, imgBluebells),
    new FlowerData(915, 440, 60, imgBluebells),
    new FlowerData(845, 440, 50, imgSunflower),
    new FlowerData(634, 580, 200, imgSunflower),
    new FlowerData(615, 620, 120, imgSunflower),
    new FlowerData(655, 640, 100, imgSunflower),
    new FlowerData(30, 640, 100, imgPurpleFlower),
    new FlowerData(65, 650, 80, imgPurpleFlower),
    new FlowerData(90, 660, 50, imgPurpleFlower),
    new FlowerData(105, 660, 50, imgPurpleFlower),
    new FlowerData(250, 660, 60, imgPurpleFlower),
    new FlowerData(450, 660, 40, imgPurpleFlower),
    new FlowerData(465, 660, 40, imgPurpleFlower),
    new FlowerData(555, 280, 100, imgBluebells),
    new FlowerData(552, 295, 70, imgBluebells),
    new FlowerData(580, 290, 80, imgBluebells),
    new FlowerData(585, 305, 50, imgBluebells),
    new FlowerData(970, 140, 100, imgRose), //under yellow butterfly down
    new FlowerData(935, 130, 100, imgSunflower),
    new FlowerData(950, 160, 30, imgDaisy),
    new FlowerData(900, 150, 60, imgRose),
    new FlowerData(880, 150, 50, imgSunflower),
    new FlowerData(865, 155, 40, imgSunflower),
    new FlowerData(675, 85, 60, imgRose),
    new FlowerData(700, 90, 50, imgSunflower),
    new FlowerData(712, 96, 40, imgSunflower),
  };
  flowers = new Flower[flowerPlacement.length];
  for(int f = 0; f < flowerPlacement.length; f++) {
    FlowerData fl = flowerPlacement[f];
    flowers[f] = new Flower(fl.x, fl.y, fl.size, fl.img);
  }
  
  PlantData[] plantPlacement = { //grass and hangingPlant list and codeblock
    new PlantData(560, 650, 80, imgTree),
    new PlantData(782, 605, 50, imgGrass),
    new PlantData(697, 605, 50, imgGrassFlowers),
    new PlantData(835, 603, 55, imgGrassFlowers),
    new PlantData(890, 600, 60, imgGrass),
    new PlantData(341, 70, 100, imgGrassFlowers),
    new PlantData(441, 70, 100, imgGrassFlowers),
    new PlantData(540, 70, 100, imgGrassFlowers),
    new PlantData(851, 430, 80, imgGrassFlowers),
    new PlantData(905, 430, 80, imgGrassFlowers),
    new PlantData(949, 430, 80, imgGrass),
    new PlantData(88, 243, 55, imgGrass), //grass with snake
    new PlantData(120, 240, 60, imgGrass),
    new PlantData(175, 245, 50, imgGrass),
    new PlantData(230, 240, 60, imgGrass),
    new PlantData(285, 245, 50, imgGrass),
    new PlantData(340, 240, 60, imgGrass),
    new PlantData(395, 245, 50, imgGrass),
    new PlantData(450, 240, 60, imgGrass),
    new PlantData(495, 245, 50, imgGrass), //snake grass end
    new PlantData(541, 680, 20, imgGrass), //under bottom tiny tree
    new PlantData(580, 680, 20, imgGrass),
    new PlantData(940, 10, 100, imgGrass), //under yellow butterfly down
    new PlantData(850, 10, 100, imgGrass),
    new PlantData(760, 10, 100, imgGrass),
    new PlantData(701, 70, 100, imgGrassFlowers), //second line of grass under yellow butterfly down
    new PlantData(801, 70, 100, imgGrassFlowers),
    new PlantData(871, 70, 100, imgGrassFlowers),
    new PlantData(96, 606, 49, imgGrass),
    new PlantData(640, 130, 100, imgGrass), //first line of grass under yellow butterfly down
    new PlantData(740, 130, 100, imgGrass),
    new PlantData(840, 130, 100, imgGrass),
    new PlantData(940, 130, 100, imgGrass),
    new PlantData(850, 200, 100, imgGrassFlowers), //on top of pink butterfly square
    new PlantData(880, 200, 100, imgGrassFlowers),
    new PlantData(567, 295, 70, imgGrassFlowers),
    new PlantData(700, 370, 60, imgGrassFlowers),
    new PlantData(770, 440, 60, imgGrassFlowers),
    new PlantData(651, 640, 100, imgGrassFlowers), //bottom of screen under tree area down
    new PlantData(751, 640, 100, imgGrassFlowers),
    new PlantData(851, 640, 100, imgGrassFlowers),
    new PlantData(940, 640, 100, imgGrassFlowers),
    new PlantData(125, 65, 110, imgGrass), //grass near top tree down
    new PlantData(225, 65, 110, imgGrassFlowers),
    new PlantData(61, 640, 100, imgGrass), //grass leading to spiderweb down
    new PlantData(161, 640, 100, imgGrass),
    new PlantData(262, 640, 100, imgGrass),
    new PlantData(467, 638, 105, imgGrass),
    new PlantData(363, 640, 100, imgGrass),
    new PlantData(540, 181, 100, imgHangingPlants), //above snake down
    new PlantData(437, 181, 100, imgHangingPlants),
    new PlantData(334, 181, 100, imgHangingPlants),
    new PlantData(230, 181, 100, imgHangingPlants),
    new PlantData(125, 181, 100, imgHangingPlants),
    new PlantData(496, 546, 70, imgHangingPlants), //under spider
    new PlantData(630, 220, 60, imgHangingPlants), //near bluebells
    new PlantData(840, 530, 100, imgHangingPlants), //near big tree
    new PlantData(940, 530, 100, imgHangingPlants),
    new PlantData(64, 60, 100, imgHangingPlants), //top of screen down
    new PlantData(168, 60, 100, imgHangingPlants),
    new PlantData(282, 60, 100, imgHangingPlants),
    new PlantData(385, 60, 100, imgHangingPlants),
    new PlantData(488, 60, 100, imgHangingPlants),
    new PlantData(590, 60, 100, imgHangingPlants),
    new PlantData(180, 330, 100, imgHangingPlants), //above spiderweb area down
    new PlantData(280, 330, 100, imgHangingPlants),
    new PlantData(380, 330, 100, imgHangingPlants),
    new PlantData(470, 330, 100, imgHangingPlants),
    new PlantData(725, 245, 110, imgHangingPlants), //above daisies near end
    new PlantData(702, 450, 80, imgHangingPlants), //under daisies
    new PlantData(860, 580, 100, imgTree), //next to big one
    new PlantData(740, 525, 210, imgTree), //big one
  };
  plants = new Plant[plantPlacement.length];
  for(int p = 0; p < plantPlacement.length; p++) {
    PlantData pl = plantPlacement[p];
    plants[p] = new Plant(pl.x, pl.y, pl.size, pl.img);
  }
}

//-------------------------------------------------tiny butterfly collection
  
void tinyButterflyCollection() { //function to consolidate placement and collision functions
  tinyButterflyPlacement();
  tinyBPurple();
  tinyBPink();
  tinyBBlue();
  tinyBYellow();
}
void tinyButterflyPlacement() { //function for placement
  image(imgTinyButterflyPurple, tbPuX, tbPuY);
  image(imgTinyButterflyPink, tbPiX, tbPiY);
  image(imgTinyButterflyBlue, tbBX, tbBY);
  image(imgTinyButterflyYellow, tbYX, tbYY);
}
void tinyBPurple() { //function for purple butterfly collision
  float leftTB = tbPuX - (imgTinyButterflyPurple.width*0.1);
  float rightTB = tbPuX + (imgTinyButterflyPurple.width*0.1);
  float topTB = tbPuY - (imgTinyButterflyPurple.height*0.1);
  float bottomTB = tbPuY + (imgTinyButterflyPurple.height*0.1);
  
  if (rightB > leftTB && leftB < rightTB && bottomB > topTB && topB < bottomTB) {
      itemCollect++;
      tbPuX = 300;
      tbPuY = 755;
  }
}
void tinyBPink() { //function fo pink butterfly collision
  float leftTB = tbPiX - (imgTinyButterflyPink.width*0.1);
  float rightTB = tbPiX + (imgTinyButterflyPink.width*0.1);
  float topTB = tbPiY - (imgTinyButterflyPink.height*0.1);
  float bottomTB = tbPiY + (imgTinyButterflyPink.height*0.1);

  if (rightB > leftTB && leftB < rightTB && bottomB > topTB && topB < bottomTB) {
      itemCollect++;
      tbPiX = 325;
      tbPiY = 755;
  }
}
void tinyBBlue() { //function for blue butterfly collision
  float leftTB = tbBX - (imgTinyButterflyBlue.width*0.1);
  float rightTB = tbBX + (imgTinyButterflyBlue.width*0.1);
  float topTB = tbBY - (imgTinyButterflyBlue.height*0.1);
  float bottomTB = tbBY + (imgTinyButterflyBlue.height*0.1);
  
  if (rightB > leftTB && leftB < rightTB && bottomB > topTB && topB < bottomTB) {
      itemCollect++;
      tbBX = 350;
      tbBY = 755;
  }
}
void tinyBYellow() { //function for yellow butterfly collision
  float leftTB = tbYX - (imgTinyButterflyYellow.width*0.1);
  float rightTB = tbYX + (imgTinyButterflyYellow.width*0.1);
  float topTB = tbYY- (imgTinyButterflyYellow.height*0.1);
  float bottomTB = tbYY + (imgTinyButterflyYellow.height*0.1);
 
  if (rightB > leftTB && leftB < rightTB && bottomB > topTB && topB < bottomTB) {
      itemCollect++;
      tbYX = 375;
      tbYY = 755;
  }
}
