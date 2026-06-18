void game() {
  background(background);
  molemole();
  
  //pause 
  fill(White);
  circle(70, 70, 70);
  fill(Texttext);
  textFont(chunky_playful);
  text("||", 70, 70, 10);
  
  fill(White);
  textFont(cute_notes);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
}

void gameClicks() {
    //if (dist (mouseX, mouseY, x, y) < 120) {
    //score = score + 1;
    if (dist(mouseX, mouseY, 70, 70) < 35) {
    mode = PAUSE;
  }
}

void molemole() {
//timer that changes the colours, picks a random circle out of the 6
  if (frameCount >= nextChangeFrame) {
    int luckyCircle = int(random(1, 7)); 
    
    //changes select circles to select colours 
    if (luckyCircle == 1) c1 = (c1 == WarmPink) ? PaleBlush : WarmPink;
    if (luckyCircle == 2) c2 = (c2 == WarmPink) ? PaleBlush : WarmPink;
    if (luckyCircle == 3) c3 = (c3 == PaleBlush) ? WarmPink : PaleBlush;
    if (luckyCircle == 4) c4 = (c4 == WarmPink) ? PaleBlush : WarmPink;
    if (luckyCircle == 5) c5 = (c5 == PaleBlush) ? WarmPink : PaleBlush;
    if (luckyCircle == 6) c6 = (c6 == PaleBlush) ? WarmPink : PaleBlush;
    
    // resets the timer so it continues to change colours 
    setNextRandomTime(); 
  }

//////// Circles 1, 2, 4 alternate between WarmPink and MutedRaspberry
//////// Circles 3, 5, 6 alternate between MutedRaspberry and WarmPink
//circle1
  if (dist(120, 200, mouseX, mouseY) < 60) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(c1);
  circle(120, 200, 120);

//circle2
  if (dist(400, 200, mouseX, mouseY) < 60) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(c2);
  circle(400, 200, 120);

//circle3
  if (dist(680, 200, mouseX, mouseY) < 60) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(c3);
  circle(680, 200, 120);

//circle4
  if (dist(120, 400, mouseX, mouseY) < 60) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(c4);
  circle(120, 400, 120);

//circle5
  if (dist(400, 400, mouseX, mouseY) < 60) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(c5);
  circle(400, 400, 120);

//circle6
  if (dist(680, 400, mouseX, mouseY) < 60) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(c6);
  circle(680, 400, 120);
  }  
  
    //tracks the time difference 
  void setNextRandomTime() {
    int randomDelay = int(random(30, 120)); 
    nextChangeFrame = frameCount + randomDelay;
}
