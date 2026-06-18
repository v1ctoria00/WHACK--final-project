void pause() {
  fill(OTHERbackground); 
  stroke(OTHERbackground);
  rect(0, 0, 800, 800);
  image(DIZZYKITTY, 200, 50, 400, 400);
  fill(Texttext); 
  textFont(cute_notes);
  text("GAME PAUSED", 400, 430);
  
  textSize(50);
  fill(White);
  circle(70, 70, 80);
  fill(Texttext);
  textFont(chunky_playful);
  text("<", 70, 65, 100);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 35) {
    mode = GAME;
  }
}
