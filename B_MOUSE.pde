void mouseReleased() {
  if(mode == INTRO) {
    introClicks();
  } else if(mode == GAME) {
    gameClicks();
  } else if(mode == PAUSE) {
    pauseClicks();
  } else if(mode == GAMEOVER) {
    gameoverClicks();
  }
  
  if (mouseX > 80 && mouseX < 330 && mouseY > 165 && mouseY < 245) {
    mode = GAME;
  }
}  
