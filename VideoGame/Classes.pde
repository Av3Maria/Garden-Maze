//Image Classes

Spider[] spiders; 
//int spiderCount = 3;
Spiderweb[] spiderwebs;
Flower[] flowers;
Plant[] plants;

//-----------------------------------------------spider

class Spider { //spider class
  
  float sx;
  float sy;
  float size;
  PImage img;

  Spider(float x, float y, float size, PImage img) {
        this.sx = x;
        this.sy = y;
        this.size = size;
        this.img = img;
  }

  void setSpider() {
    image(img, sx, sy, size, size);
    checkBlockedSpider(this); //spider collision check
  }
}
void checkBlockedSpider(Spider s) { //function to check spider collision
  float leftSp = (s.sx - (s.size * 0.5)); //spider hitbox that scales with spider size
  float rightSp = (s.sx + (s.size * 0.5));
  float topSp = (s.sy - (s.size * 0.5));
  float bottomSp = (s.sy + (s.size * 0.5));
  
  if (rightB > leftSp && leftB < rightSp && bottomB > topSp && topB < bottomSp) {
      imgBX = 100;
      imgBY = 330;
      deathCount++;
  }
}

//------------------------------------------------------------------spiderweb

class Spiderweb { //class for spiderweb collision detection
  float swx;
  float swy;
  float size;
  PImage img;

  Spiderweb(float x, float y, float size, PImage img) {
        this.swx = x;
        this.swy = y;
        this.size = size;
        this.img = img;
  }
 
  void setSpiderweb() {
    image(img, swx, swy, size, size);
  }
} 
class SpiderwebData {
    float x;
    float y;
    float size;
    PImage img;

    SpiderwebData(float x, float y, float size, PImage img) {
        this.x = x;
        this.y = y;
        this.size = size;
        this.img = img;
    }
}

//----------------------------------------------------flower (planty images)

class Flower { //class for flower placement
  float fx;
  float fy;
  float size;
  PImage img;

  Flower(float x, float y, float size, PImage img) {
        this.fx = x;
        this.fy = y;
        this.size = size;
        this.img = img;
  }
 
  void setFlowers() {
    image(img, fx, fy, size, size);
    //checkBlockedFlower(this);
  }
}
class FlowerData {
  float x;
  float y;
  float size;
  PImage img;

  FlowerData(float x, float y, float size, PImage img) {
        this.x = x;
        this.y = y;
        this.size = size;
        this.img = img;
  }
}

class Plant { //class for grass and hanging plant images
  float px;
  float py;
  float size;
  PImage img;
  
  Plant(float x, float y, float size, PImage img) {
    this.px = x;
    this.py = y;
    this.size = size;
    this.img = img;
  }
  
  void setPlants() {
    image(img, px, py, size, size);
  }
}
class PlantData {
  float x;
  float y;
  float size;
  PImage img;

  PlantData(float x, float y, float size, PImage img) {
        this.x = x;
        this.y = y;
        this.size = size;
        this.img = img;
  }
}

//split out the flowers/trees and the grass/hanging plants into separate classes to read easier (refactor to spped up processing speed?)
