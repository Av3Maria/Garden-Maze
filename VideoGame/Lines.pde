//Maze lines and Spiderweb Lines

void mazeLines() { //function for drawing maze lines
  noStroke();
  //maze lines ...
  fill(blockedColor); 
  rect(0, 0, width, 10); //horizontal top
  rect(0, 690, width, 10); //horizontal bottom
  rect(0, 0, 10, height); //vertical left side
  rect(990, 0, 10, 320); //vertical right side top
  rect(990, 690, 10, -320); //vertical right side bottom
  rect(60, 70, 10, 120); //v
  rect(60, 60, 100, 10); //h
  rect(70, 120, 520, 10); //h
  rect(60, 280, 10, 360); //v
  rect(70, 630, 390, 10); //h
  //rect(60, 210, 70, 10); //h
  rect(60, 270, 470, 10); //h
  //rect(120, 180, 10, 30); //v
  rect(70, 180, 380, 10); //h    why am i doing this
  rect(220, 10, 10, 60); //v
  rect(120, 390, 10, 240); //v
  rect(120, 270, 10, 60); //v
  rect(280, 60, 10, 60); //v
  rect(280, 60, 300, 10); //h
  rect(640, 10, 10, 120); //v
  rect(710, 60, 280, 10); //h
  rect(650, 120, 270, 10); //h
  rect(590, 180, 400, 10); //h
  rect(590, 180, 10, 100); //v
  rect(520, 120, 10, 220); //v
  rect(120, 330, 200, 10); //h
  rect(380, 330, 220, 10); //h
  rect(180, 340, 10, 240); //v
  rect(310, 390, 10, 240); //v
  rect(380, 330, 10, 250); //v
  rect(450, 390, 10, 250); //v
  rect(520, 570, 10, 130); //v
  rect(450, 390, 80, 10); //h
  rect(450, 500, 80, 10); //h
  rect(520, 390, 10, 120); //v
  rect(590, 330, 10, 500); //v
  rect(660, 180, 10, 450); //v
  rect(660, 630, 260, 10); //h
  rect(740, 470, 260, 10); //h
  rect(660, 400, 80, 10); //h
  rect(800, 250, 10, 220); //v
  rect(730, 250, 10, 160); //v
  rect(800, 250, 120, 10); //h
  rect(920, 250, 10, 170); //v  finally
}
    
void spiderwebLines() {
  stroke(1);
  //spiderweb lines for spiderweb area
  fill(255);
  //lines for far left top bit (vertical path at the end)
  rect(490, 400, 2, 49); 
  rect(160, 340, 2, 20); //on top of main area down
  rect(165, 340, 2, 40);
  rect(170, 340, 2, 30);
  rect(175, 340, 2, 15);
  rect(215, 340, 2, 110); 
  rect(250, 340, 2, 70);
  rect(255, 340, 2, 50);
  rect(265, 340, 2, 20);
  rect(270, 340, 2, 90);
  rect(275, 340, 2, 70);
  rect(285, 340, 2, 40);
  rect(290, 340, 2, 25);
  rect(295, 340, 2, 15);
  rect(305, 340, 2, 20);
  rect(310, 340, 2, 30);
  rect(315, 340, 2, 10);
  rect(435, 340, 2, 20); //entrance to main area above first spider
  rect(440, 340, 2, 40);
  rect(445, 340, 2, 30);
  rect(450, 340, 2, 15);
  rect(460, 340, 2, 20);
  rect(470, 340, 2, 30);
  rect(475, 340, 2, 15);
  rect(495, 340, 2, 40);
  rect(500, 340, 2, 25);
  rect(505, 340, 2, 30);
  rect(510, 340, 2, 15);
  rect(520, 340, 2, 10);
  rect(525, 340, 2, 20);
  rect(530, 340, 2, 15);
  rect(540, 340, 2, 10);
  rect(545, 340, 2, 30);
  rect(560, 340, 2, 25);
  rect(565, 340, 2, 15);
  rect(570, 340, 2, 10);
  rect(575, 340, 2, 70);
  rect(580, 340, 2, 50);
  rect(585, 340, 2, 30);
  rect(75, 280, 2, 120);
  rect(80, 280, 2, 50);
  rect(90, 280, 2, 80);
  rect(95, 280, 2, 30);
  rect(100, 280, 2, 50);
  rect(105, 280, 2, 20);
  rect(113, 280, 2, 70);
  //lines for long horizontal bit on top
  rect(133, 280, 2, 40);
  rect(137, 280, 2, 20);
  rect(145, 280, 2, 35);
  rect(155, 280, 2, 15);
  rect(160, 280, 2, 20);
  rect(165, 280, 2, 10);
  rect(170, 280, 2, 25);
  rect(180, 280, 2, 45);
  rect(207, 280, 2, 30);
  rect(210, 280, 2, 20);
  rect(250, 280, 2, 15);
  rect(255, 280, 2, 30);
  rect(260, 280, 2, 20);
  rect(270, 280, 2, 40);
  rect(280, 280, 2, 30);
  rect(295, 280, 2, 25);
  rect(320, 280, 2, 20);
  rect(325, 280, 2, 35);
  rect(330, 280, 2, 50);
  rect(340, 280, 2, 30);
  rect(350, 280, 2, 15);
  rect(355, 280, 2, 65);
  rect(360, 280, 2, 55);
  rect(375, 280, 2, 20);
  rect(380, 280, 2, 40);
  rect(385, 280, 2, 30);
  rect(408, 280, 2, 20);
  rect(413, 280, 2, 35);
  rect(445, 280, 2, 10);
  rect(450, 280, 2, 15);
  rect(455, 280, 2, 10);
  rect(460, 280, 2, 20);
  rect(470, 280, 2, 25);
  rect(475, 280, 2, 15);
  rect(497, 280, 2, 10);
  rect(500, 280, 2, 30);
  rect(515, 280, 2, 25);
}
