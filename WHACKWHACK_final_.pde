//WHACKWHACK

//colour set up
color background = #facdd8;
color OTHERbackground = #fce6f0;
color Texttext = #f5a4ca;
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
color eyes = #5c3927;

PImage YOULOSEKITTY;
PImage DIZZYKITTY;
PImage ANGRYKITTY;
PImage HAPPYKITTY;
PImage SADKITTY;
PImage HUNGRYKITTY;

boolean YOULOSEKITTYOn;
boolean DIZZYKITTYOn;
boolean ANGRYKITTYOn;
boolean HAPPYKITTYOn;
boolean SADKITTYOn;
boolean HUNGRYKITTYOn;

color c1, c2, c3, c4, c5, c6;
int nextChangeFrame = 0;
int x, y;

//modes
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int LEVELS = 4;
final int WIN = 5;
final int OPTIONS = 6; 

PFont chunky_playful;
PFont cute_notes;

int score, lives;

void setup() {
  size(800, 600);
  mode = INTRO;
  
  chunky_playful = createFont("Chunky Playful copy 2.otf", 72);
  cute_notes = createFont("Cute Notes copy 3.ttf", 50);
  
  YOULOSEKITTY = loadImage("YOU LOSE copy 2.png");
  DIZZYKITTY = loadImage("DIZZY KITTY copy 2.png");
  ANGRYKITTY = loadImage("ANGRY KITTY copy 2.png");
  HAPPYKITTY = loadImage("HAPPY KITTY copy 2.png");
  SADKITTY = loadImage("SAD KITTY copy 2.png");
  //HUNGRYKITTY = loadImage("HUNGRY KITTY copy.png");
  
  boolean YOULOSEKITTYOn = false;
  boolean DIZZYKITTYOn = false;
  boolean ANGRYKITTYOn = false;
  boolean HAPPYKITTYOn = false;
  boolean SADKITTYOn = false;
  boolean HUNGRYKITTYOn = false;

//initalize paddles
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if(mode == GAME) {
    game();
  } else if(mode == PAUSE) {
    pause();
  } else if(mode == GAMEOVER) {
    gameover();
  } else { 
    println("Mode error: " + mode);
  }
}
