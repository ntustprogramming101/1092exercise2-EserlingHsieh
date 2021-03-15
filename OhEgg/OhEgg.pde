final float EGG_W = 35;
final float EGG_H = 45;
final float DROP_RANGE = 290;

final float BASKET_W = 100;
final float BASKET_H = 100;
final float BASKET_Y = 330;
final float OFFSET_X = 10;
final float OFFSET_Y = 30;
final float BROKENEGG_W = 70;
final float BROKENEGG_H = 70;
final float GROUND_Y = 430;

PImage bgImg, basket, egg, brokenEgg, basketFront;

float eggX, eggY, eggSpeed;
float  basketX;
float margin;

boolean gameOver;


void setup(){
  size(350, 500);
  bgImg = loadImage("img/bgImg.png");
  basket = loadImage("img/basket.png");
  egg = loadImage("img/egg.png");
  brokenEgg = loadImage("img/breakEgg.png");
  basketFront = loadImage("img/basketFront.png");
  
  imageMode(CORNER);
}



void draw() {
  image(bgImg, 0, 0,width, height);
  image(basket, basketX, BASKET_Y, BASKET_W, BASKET_H); 
}


void mouseClicked(){

}


  
