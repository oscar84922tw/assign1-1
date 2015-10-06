PImage bg1;
PImage bg2;
PImage treasure;
PImage hp;
PImage fighter;
PImage enemy;
void setup() {
   size(641,482) ; 
   frameRate(1);
   bg1 = loadImage("img/bg1.png");
   treasure = loadImage("img/treasure.png");
   hp = loadImage("img/hp.png");
   fighter = loadImage("img/fighter.png");
   enemy = loadImage("img/enemy.png");
   bg2 = loadImage("img/bg2.png");   
}
int x = 0;
int y = 0;
int z = -640;

float c = random(170);
float t = random(640);
float s = random(480);

 void draw() {
   background(0);
   frameRate(1250);
   image(bg1,y%640,0);
    y++;
   image(bg2,z%640,0);     
    z++;
   if(y==640){
    y=-640;
    }
   if(z==640){
    z=-640;
    }
   /*while(q==0){
    
    y=y-640;
    
    break;
    }*/
   /*for(int z=0;z>(-640);z++){
      for(int y=0;y<640;y++){
      image(bg1,y%640,0);
      image(bg2,z%640,0);
      }
    }*/
  //image(bg2,640-y,0); nullpointerexception;
  //image(bg2,y-641,0); nullpointerexception;  
   image(fighter,500,240);
   stroke(250,3,3);
   strokeWeight(18);
   line(68,38,68+c,38);
   image(hp,50,25);  
   image(enemy,x%640,240);
   x+=2;
   image(treasure,t,s);  
   
}
