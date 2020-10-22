
class Vida {

  float posX, posY, tam, cant;
  PImage[] corazon = new PImage[3];

  Vida() {
    posY = 30;
    posX = 10;
    tam = 100;
    cant = 3;
    

    corazon[0] = loadImage("heart3.png");
    corazon[1] = loadImage("heart3.png");
    corazon[2] = loadImage("heart3.png");
  }

  void dibujar_d() {
    pushStyle();
    imageMode(CORNER);
    for (int i = 0; i < cant; i++) {  
      image(corazon[i], posX+i*tam, posY, tam, tam);
    }
    
    popStyle();
  }
}
