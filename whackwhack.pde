//WHACKWHACK

//colour set up
color background = #facdd8;
color PaleBlush = #FADAD9;
color LightRose = #F3C3C5;
color SoftCoralPink = #E9ABAE;
color WarmPink = #E0959C;
color MutedRaspberry = #D78289;
color AntiqueRose = #CE6F79;
color VintagePink = #C65C69;
color White = #FFFFFF;
color SLIDEPINK = #f2b3c6;
color OUTLINE = #f7cdd4;
color SELECTOUTLINE = #fae3ed;

//modes
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

void setup() {
  size(800, 600);
  mode = INTRO;

//initalize paddles
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if(mode == GAME) {
    
  } else if(mode == PAUSE) {
    pause();
  } else if(mode == GAMEOVER) {
    gameover();
  } else { 
    println("Mode error: " + mode);
  }
}
