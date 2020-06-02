
//basado en: https://www.youtube.com/watch?v=ei6D1ipLm6s&list=PLgi80Sc2oaGguw9b9nr4nkbw-jTPFGR1k&index=9&t=2s   

//imágenes
PImage fondo;
PImage gronckle;
PImage dragon3;
PImage dragon4;
PImage dragon2;
PImage dragon5;

//texto
float tamText;
PFont fuente;

//posiciones
float posY1;
float posY2;
float posX1;



void setup(){
  size(600, 400); 

  //imágenes
  imageMode(CORNER);  
  fondo = loadImage("papel fondo.png");
  gronckle = loadImage("gronckle1.png");
  dragon3 = loadImage("dragon3.png");
  dragon4 = loadImage("dragon4.png");
  dragon2 = loadImage("dragon2.png");
  dragon5 = loadImage("dragon5.png");
  
  //texto
  tamText = 48;
  fuente = loadFont("Georgia-48.vlw");
  textFont(fuente);
  
  //posiciones
  posY1 = height/2;
  posY2 = height;
  posX1 = width/2;

  
  
}

void draw(){
  //fondo papel
  image(fondo, 0, 0);
  
  //fondo negro
  fill(0);
  noStroke();
  rect(0, 0, width, posY2);
  posY2--;
  
  //Cómo entrenar a tu
  textSize(tamText);
  fill(#FF860D);
  textAlign(CENTER, BOTTOM);
  text("HOW TO TRAIN YOUR", posX1, posY1);
  //Dragón
  fill(#FF2B00);
  textAlign(CENTER, TOP);
  text("DRAGON",posX1, posY1);
  posY1--;
  
  //REPARTO
  textAlign(CENTER, BOTTOM);
  fill(0);
  textSize(tamText-20);
  text("CAST", posX1, posY1+400);
  
  textSize(tamText-30);
  text("HICCUP", posX1, posY1+470);
  text("Jay Baruchel", posX1, posY1+490);
  
  text("STOICK", posX1, posY1+490+40);
  text("Gerard Butler", posX1, posY1+490+40+20);
  
  text("ASTRID", posX1, posY1+550+40);
  text("America Ferrera", posX1, posY1+550+60);
  
  text("GOBBER", posX1, posY1+610+40);
  text("Craig Ferguson", posX1, posY1+610+60);
  
  image(gronckle, 50, posY1+500, 150, 190);
  
  text("SNOTLOUT", posX1, posY1+670+40);
  text("Jonah Hill", posX1, posY1+670+60);
  
  text("FISHLEGS", posX1, posY1+730+40);
  text("Christopher Mintz-Plasse", posX1, posY1+730+60);
  
  text("RUFFNUT", posX1, posY1+790+40);
  text("Kristen Wiig", posX1, posY1+790+60);
  
  text("TUFFNUT", posX1, posY1+850+40);
  text("Tj Miller",posX1, posY1+850+60);
  
  image(dragon3, 400, posY1+790, 150, 190);
  
  
  //producción
  textSize(tamText-20);
  text("PRODUCTION TEAM", posX1, posY1+1050);
  
  textSize(tamText-30);
  text("DIRECTED BY \n Chris Sanders & Dean DeBlois", posX1, posY1+ 1050+70);
  
  text("PRODUCED BY\nBonnie Arnold", posX1, posY1+1120+60);
  
  text("EXECUTIVE PRODUCERS\nKristine Belson\nTim Johnson", posX1, posY1+1180+80);
  
  text("SCREENPLAY BY\nWill Davies\nand\nDean DeBlois & Chris Sanders", posX1, posY1+1260+100);
  
  image(dragon4, 30, posY1+1215, 160, 130);
  
  text("BASED ON THE BOOK BY\nCressida Cowell", posX1, posY1+1360+80);
  
  text("MUSIC BY\nJohn Powell", posX1, posY1+1440+60);
  
  text("EDITORS\nDarren Holmes\nMaryann Brandon", posX1, posY1+1500+80);
  
  text("PRODUCTION DESIGNER\nKathy Altieri", posX1, posY1+1580+60);
  
  text("HEAD OF CHARACTER ANIMATION\nSimon Otto", posX1, posY1+1640+60);
  
  text("HEAD OF STORY\nAlessandro Carloni", posX1, posY1+1700+60);
  
  image(dragon2, 400, posY1+1690, 160, 130);
  
  text("ART DIRECTION \nPierre-Olivier Vincent", posX1, posY1+1760+60);
  
  text("CHARACTER DESING\nNico Marlet", posX1, posY1+1820+60);
  
  text("VISUAL EFFECTS SUPERVISOR\nCraig Ring", posX1, posY1+1880+60);
  
  text("HEAD OF LAYOUT\nGil Zimmerman", posX1, posY1+1940+60);
  
  text("VISUAL CONSULTANT\nRoger Deakins", posX1, posY1+2000+60);
  
  text("CO-PRODUCERS\nKaren Foster\nDoug Davison\nRoy Lee\nMichael Connolly", posX1, posY1+2060+120);
  
  text("ASSOCIATE PRODUCER\nBruce Seifert", posX1, posY1+2180+60);

  image(dragon5, 250, posY1+2280, 100, 100);
 
 
  println(mouseX, mouseY);
  
}
