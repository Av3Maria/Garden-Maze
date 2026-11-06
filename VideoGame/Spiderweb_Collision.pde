//put all spiderweb collision detection into here, only way to scale correctly for the way i did them
//is there a way to refactor?...

boolean inWeb;

void SpiderwebCollisionAll() {
  //condense functions here
  spiderweb1();
  spiderweb2();
  spiderweb3();
  spiderweb4();
  spiderweb5();
  spiderweb6();
  spiderweb7();
  spiderweb8();
  spiderweb9();
  spiderweb10();
  spiderweb11();
  spiderweb12();
  spiderweb13();
  spiderweb14();
  spiderweb15();
  spiderweb16();
  spiderweb17();
  spiderweb18();
  spiderweb19();
  spiderweb20();
}

void spiderweb1() {
  float lefts1 = 424 - (imgSpiderwebLeftUpper.width*0.35);
  float rights1 = 424 + (imgSpiderwebLeftUpper.width*0.04); //fix later maybe?
  float tops1 = 374 - (imgSpiderwebLeftUpper.height*0.35);
  float bottoms1 = 374 + (imgSpiderwebLeftUpper.height*0.04);
  
  if (rightB > lefts1 && leftB < rights1 && bottomB > tops1 && topB < bottoms1) { 
    inWeb = true;
  }
}

void spiderweb2() {
  float lefts2 = 235 - (imgSpiderwebRightUpper.width*0.5);
  float rights2 = 235 + (imgSpiderwebRightUpper.width*0.05);
  float tops2 = 386 - (imgSpiderwebRightUpper.height*0.45);
  float bottoms2 = 386 + (imgSpiderwebRightUpper.height*0.05);
  
  if (rightB > lefts2 && leftB < rights2 && bottomB > tops2 && topB < bottoms2) { 
    inWeb = true;
  }
}

void spiderweb3() {
  float lefts3 = 250 - (imgSpiderwebRightLower.width*0.1);
  float rights3 = 250 + (imgSpiderwebRightLower.width*0.6);
  float tops3 = 570 - (imgSpiderwebRightLower.height*0.05);
  float bottoms3 = 570 + (imgSpiderwebRightLower.height*0.6);

  if (rightB > lefts3 && leftB < rights3 && bottomB > tops3 && topB < bottoms3) { 
    inWeb = true;
  }
}

void spiderweb4() {
  float lefts4 = 302 - (imgSpiderwebLeftUpper.width*0.3);
  float rights4 = 302 + (imgSpiderwebLeftUpper.width*0.1);
  float tops4 = 508 - (imgSpiderwebLeftUpper.height*0.35);
  float bottoms4 = 508 + (imgSpiderwebLeftUpper.height*0.01);
  
  if (rightB > lefts4 && leftB < rights4 && bottomB > tops4 && topB < bottoms4) { 
    inWeb = true;
  }
}

void spiderweb5() {
  float lefts5 = 155 - (imgSpiderwebRightUpper.width*0.04);
  float rights5 = 155 + (imgSpiderwebRightUpper.width*0.25);
  float tops5 = 490 - (imgSpiderwebRightUpper.height*0.25);
  float bottoms5 = 490 + (imgSpiderwebRightUpper.height*0.04);
 
  if (rightB > lefts5 && leftB < rights5 && bottomB > tops5 && topB < bottoms5) { 
    inWeb = true;
  }
}

void spiderweb6() { 
  float lefts6 = 166 - (imgSpiderwebLeftLower.width*0.35);
  float rights6 = 166 + (imgSpiderwebLeftLower.width*0.01);
  float tops6 = 594 - (imgSpiderwebLeftLower.height*0.05);
  float bottoms6 = 594 + (imgSpiderwebLeftLower.height*0.35);

  if (rightB > lefts6 && leftB < rights6 && bottomB > tops6 && topB < bottoms6) { 
    inWeb = true;
  }
}

void spiderweb7() {
  float lefts7 = 285 - (imgSpiderwebRightLower.width*0.05);
  float rights7 = 285 + (imgSpiderwebRightLower.width*0.25);
  float tops7 = 450 - (imgSpiderwebRightLower.height*0.04);
  float bottoms7 = 450 + (imgSpiderwebRightLower.height*0.25);

  if (rightB > lefts7 && leftB < rights7 && bottomB > tops7 && topB < bottoms7) { 
    inWeb = true;
  }
}

void spiderweb8() {
  float lefts8 = 145 - (imgSpiderwebRightLower.width*0.05);
  float rights8 = 145 + (imgSpiderwebRightLower.width*0.35);
  float tops8 = 430 - (imgSpiderwebRightLower.height*0.05);
  float bottoms8 = 430 + (imgSpiderwebRightLower.height*0.35);

  if (rightB > lefts8 && leftB < rights8 && bottomB > tops8 && topB < bottoms8) { 
    inWeb = true;
  }
}

void spiderweb9() {
  float lefts9 = 105 - (imgSpiderwebLeftUpper.width*0.35);
  float rights9 = 105 + (imgSpiderwebLeftUpper.width*0.05);
  float tops9 = 550 - (imgSpiderwebLeftUpper.height*0.35);
  float bottoms9 = 550 + (imgSpiderwebLeftUpper.height*0.05);

  if (rightB > lefts9 && leftB < rights9 && bottomB > tops9 && topB < bottoms9) { 
    inWeb = true;
  }
}

void spiderweb10() {
  float lefts10 = 91 - (imgSpiderwebLeftLower.width*0.2);
  float rights10 = 91 + (imgSpiderwebLeftLower.width*0.01);
  float tops10 = 495 - (imgSpiderwebLeftLower.height*0.05);
  float bottoms10 = 495 + (imgSpiderwebLeftLower.height*0.2);

  if (rightB > lefts10 && leftB < rights10 && bottomB > tops10 && topB < bottoms10) { 
    inWeb = true;
  }
}

void spiderweb11() {
  float lefts11 = 493 - (imgSpiderwebRightLower.width*0.01);
  float rights11 = 493 + (imgSpiderwebRightLower.width*0.25);
  float tops11 = 665 - (imgSpiderwebRightLower.height*0.01);
  float bottoms11 = 665 + (imgSpiderwebRightLower.height*0.25);

  if (rightB > lefts11 && leftB < rights11 && bottomB > tops11 && topB < bottoms11) { 
    inWeb = true;
  }
}

void spiderweb12() {
  float lefts12 = 350 - (imgSpiderwebLeftUpper.width*0.2);
  float rights12 = 350 + (imgSpiderwebLeftUpper.width*0.01);
  float tops12 = 661 - (imgSpiderwebLeftUpper.height*0.2);
  float bottoms12 = 661 + (imgSpiderwebLeftUpper.height*0.01);

  if (rightB > lefts12 && leftB < rights12 && bottomB > tops12 && topB < bottoms12) { 
    inWeb = true;
  }
}

void spiderweb13() {
  float lefts13 = 200 - (imgSpiderwebLeftLower.width*0.2);
  float rights13 = 200 + (imgSpiderwebLeftLower.width*0.01);
  float tops13 = 669 - (imgSpiderwebLeftLower.height*0.01);
  float bottoms13 = 669 + (imgSpiderwebLeftLower.height*0.2);
 
  if (rightB > lefts13 && leftB < rights13 && bottomB > tops13 && topB < bottoms13) { 
    inWeb = true;
  }
}

void spiderweb14() {
  float lefts14 = 315 - (imgSpiderwebRightUpper.width*0.01);
  float rights14 = 315 + (imgSpiderwebRightUpper.width*0.15);
  float tops14 = 656 - (imgSpiderwebRightUpper.height*0.15);
  float bottoms14 = 656 + (imgSpiderwebRightUpper.height*0.01);

  if (rightB > lefts14 && leftB < rights14 && bottomB > tops14 && topB < bottoms14) { 
    inWeb = true;
  }
}
void spiderweb15() {
  float lefts15 = 360 - (imgSpiderwebLeftUpper.width*0.4);
  float rights15 = 360 + (imgSpiderwebLeftUpper.width*0.05);
  float tops15 = 600 - (imgSpiderwebLeftUpper.height*0.4);
  float bottoms15 = 600 + (imgSpiderwebLeftUpper.height*0.04);
  
  if (rightB > lefts15 && leftB < rights15 && bottomB > tops15 && topB < bottoms15) { 
    inWeb = true;
  }
}

void spiderweb16() {
  float lefts16 = 350 - (imgSpiderwebLeftLower.width*0.3);
  float rights16 = 350 + (imgSpiderwebLeftLower.width*0.04);
  float tops16 = 530 - (imgSpiderwebLeftLower.height*0.05);
  float bottoms16 = 530 + (imgSpiderwebLeftLower.height*0.3);

  if (rightB > lefts16 && leftB < rights16 && bottomB > tops16 && topB < bottoms16) { 
    inWeb = true;
  }
}

void spiderweb17() {
  float lefts17 = 355 - (imgSpiderwebRightLower.width*0.05);
  float rights17 = 355 + (imgSpiderwebRightLower.width*0.25);
  float tops17 = 420 - (imgSpiderwebRightLower.height*0.05);
  float bottoms17 = 420 + (imgSpiderwebRightLower.height*0.25);
  
  if (rightB > lefts17 && leftB < rights17 && bottomB > tops17 && topB < bottoms17) { 
    inWeb = true;
  }
}

void spiderweb18() {
  float lefts18 = 425 - (imgSpiderwebRightLower.width*0.05);
  float rights18 = 425 + (imgSpiderwebRightLower.width*0.25);
  float tops18 = 470 - (imgSpiderwebRightLower.height*0.05);
  float bottoms18 = 470 + (imgSpiderwebRightLower.height*0.25);
 
  if (rightB > lefts18 && leftB < rights18 && bottomB > tops18 && topB < bottoms18) { 
    inWeb = true;
  }
}

void spiderweb19() {
  float lefts19 = 430 - (imgSpiderwebRightUpper.width*0.01);
  float rights19 = 430 + (imgSpiderwebRightUpper.width*0.2);
  float tops19 = 515 - (imgSpiderwebRightUpper.height*0.2);
  float bottoms19 = 515 + (imgSpiderwebRightUpper.height*0.01);

  if (rightB > lefts19 && leftB < rights19 && bottomB > tops19 && topB < bottoms19) { 
    inWeb = true;
  }
}

void spiderweb20() {
  float lefts20 = 420 - (imgSpiderwebRightLower.width*0.05);
  float rights20 = 420 + (imgSpiderwebRightLower.width*0.3);
  float tops20 = 600 - (imgSpiderwebRightLower.height*0.05);
  float bottoms20 = 600 + (imgSpiderwebRightLower.height*0.3);

  if (rightB > lefts20 && leftB < rights20 && bottomB > tops20 && topB < bottoms20) { 
    inWeb = true;
  }
}
