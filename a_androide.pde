
class Androide {   //protagonista del juego

  //PROPIEDADES
  float posX;
  float posY;
  float tam;
  PImage imagen;

  //CONSTRUCTOR
  Androide() {
    posX = 100;
    posY = 360;
    tam = 90;
    imagen = loadImage("markuss.png");
    imageMode(CENTER);
  }

  //MÉTODOS
  void dibujar_a() {  //dibujo al androide
    image(imagen, posX, posY, tam, tam+20);
  }

  void reiniciar_a() {
    posX = 100;
    posY = 360;
  }

  void mover_a() {  //para keypressed

    if (keyCode == UP)    //arriba
      posY = posY-10;
    if (keyCode == DOWN)  //abajo
      posY = posY+10;
    if (keyCode == RIGHT) //derecha
      posX = posX+10;  
    if (keyCode == LEFT)  //izquierda
      posX = posX-10;


    //Paredes invisibles
    if (posX < tam/2 ) {  //izq
      posX = tam/2;
    }

    if (posY < 330-tam/4 ) {  //arriba
      posY = 330-tam/4;
    }
    if (posY > height-tam/2 ) {  //abajo
      posY = height-tam/2;
    }
  }
}
