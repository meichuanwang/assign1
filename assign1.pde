PImage fighterImg;
PImage enemyImg;
PImage treasureImg;
PImage bg1Img;
PImage bg2Img;
PImage hpImg;
int x;
int bg;
int y;
int hp;
int w;
int h;

void setup(){
  size(640,480);
  x=1;
  y=1;
  bg=1;
  w=1;
  h=1;
  hp=floor(random(200));
  x=floor(random(1,600));
  y=floor(random(1,400)); 
  w=floor(random(1,400)); 
  h=floor(random(1,400)); 
  
   
  fighterImg= loadImage("img/fighter.png");
  enemyImg= loadImage("img/enemy.png");
  bg1Img= loadImage("img/bg1.png");
  bg2Img= loadImage("img/bg2.png");
  hpImg= loadImage("img/hp.png");
  treasureImg= loadImage("img/treasure.png"); 
}

void draw(){
  background(0);  
  x %= 640;
  bg %= 640;  
  x+=3;
  bg++;
  image(bg1Img,bg,0);
  image(bg2Img,bg-640,0);
  image(enemyImg,x,y);
  image(fighterImg,550,200);
  image(treasureImg,w,h);
  
  stroke(50);
  fill(255,0,0);
  rect(10, 3, hp, 18, 5);
  image(hpImg,0,0);
}
