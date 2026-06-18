
void intro() {
  background(background);
  textSize(72);
  fill(VintagePink);
  textAlign(CENTER, CENTER);
  textFont(chunky_playful);
  text("WHACK A HELLOKITTY", 400, 100);
  
/////////////////////////////
    //HELLO BIG KITTY
    fill(255);
    strokeWeight(3);
    stroke(255);
    ellipse(400, 900, 1200, 1200);
    
    //HELLO BIGGY EARS
    fill(255);
    ellipse(70, 350, 100, 300);
    circle(140, 350, 200);
    circle(120, 300, 150);
    circle(100, 300, 100);
    circle(100, 260, 100);
  
    ellipse(730, 350, 100, 300);
    circle(660, 350, 200);
    circle(680, 300, 150);
    circle(700, 300, 100);
    circle(700, 260, 100);
  
    //HELLO BIGGY BOW
    fill(MutedRaspberry);
    strokeWeight(1);
    stroke(MutedRaspberry);
    ellipse(670, 370, 100, 80);
    ellipse(600, 300, 200, 120);
    ellipse(780, 420, 200, 120);
    
    //HELLO BIGGY EYES
    fill(0);
    strokeWeight(0);
    ellipse(150, 500, 70, 100);
    ellipse(650, 500, 70, 100);
    
    //HELLO BIGGY EARS
    fill(255, 232, 157);
    ellipse(400, 560, 70, 50);
    
  StartButton(300, 150);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 130 && mouseY < 200) {
    mode = GAME;
  }
}

  void StartButton(int x, int y) {
  if (mouseX > x && mouseX < x + 100 && mouseY > y && mouseY < y + 30) {
    stroke(White);
  } else { 
    stroke(LightRose);
  } 
  fill(PaleBlush);
  rect(x, y, 200, 70);
  fill(MutedRaspberry);
  textSize(50);
  textFont(cute_notes);
  text("START", x + 100, y + 30);
}
//////////////////////////////////////////////////////////////
