
class Disparo {  //proyectiles o balas que lanzan los humanos

  //PROPIEDADES
  float posX, posY, vel, tam;

  //CONSTRUCTOR
  Disparo (float y, float x) { 
    posX = x;
    posY = y-40;
    vel = 9;
    tam = 10;
  }

  //MÉTODOS
  void dibujar_c() {    //dibujo los proyectiles
    pushStyle();
    fill(0);
    noStroke();
    circle(posX, posY, tam);
    popStyle();
  }

  void avanzar_c() {
    posX -= vel;  //avanza hacia la izquierda  
  }


  void reciclar_c(float y, float x) {  //cuando llega al borde izquierdo de la pantalla, se recicla para aparecer en el borde derecho //<>//
  if (posX < 0 ) {
    posX = x;
    posY = y-40;
    vel = 9;
    } //<>//
  }
}
