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
float basketX;
float margin;

boolean gameOver=false;


void setup(){
  size(350, 500);
  bgImg = loadImage("img/bgImg.png");
  basket = loadImage("img/basket.png");
  egg = loadImage("img/egg.png");
  brokenEgg = loadImage("img/breakEgg.png");
  basketFront = loadImage("img/basketFront.png");
  
  imageMode(CORNER);
  
  eggX=random(30,DROP_RANGE-35);
  eggY=-45;
  eggSpeed=floor(random(2,5));

}




void draw() {
  image(bgImg, 0, 0,width, height);
  if(!gameOver){
    image(basket, basketX, BASKET_Y, BASKET_W, BASKET_H); 
    basketX=mouseX-50;
    if(mouseX<=50){
    basketX=0;
    }
    if(mouseX>=300){
    basketX=250;
    }
    
    image(egg, eggX, eggY,EGG_W, EGG_H);
    eggY+=eggSpeed;
    image(basketFront, basketX, BASKET_Y,BASKET_W, BASKET_H);
    
    if(eggY>BASKET_Y+OFFSET_Y){
      if(eggX>=basketX+OFFSET_X&&eggX<=basketX+BASKET_W-OFFSET_X-EGG_W){
        
        eggX=random(30,DROP_RANGE-35);
        eggY=-45;
        eggSpeed=floor(random(2,5));
        
      }
      else{
        if(eggY>=GROUND_Y){
          gameOver=true;
          
         
          
        }
      
      }
      
    }
  }
  else{
    image(basket, basketX, BASKET_Y, BASKET_W, BASKET_H); 
    image(brokenEgg, eggX, GROUND_Y,BROKENEGG_W, BROKENEGG_H);
    
  }

    
  }


void mouseClicked(){
  if(gameOver){
  gameOver=false;
  eggX=random(30,DROP_RANGE-35);
  eggY=-45;
  eggSpeed=floor(random(2,5));
  }
}


  
