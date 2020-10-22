
class Humano {  //enemigos del juego 

  //PROPIEDADES
  float posX, posY, vel, tam;
  PImage soldado;

  //CONSTRUCTOR
  Humano (float x, float y) {
    posX = x;
    posY = y; 
    vel = 4;
    tam = 150;
    soldado = loadImage("soldado.png");
    imageMode(CENTER);
  }

  //MÉTODOS (funciones)
  void dibujar_b() {    //dibujo al humano
    image(soldado, posX, posY, tam, tam+10);
  }
  
  
  void avanzar_b() {
    posX -= vel;  //avanza hacia la izquierda
  }

  void reciclar_b(float x, float y) {  //cuando llega al borde izquierdo de la pantalla, se recicla para aparecer en el borde derecho
    if (posX < 0 - tam) {
      posX = x;
      posY = y; 
      vel = 4;
    }
  }

  float devolverY() {
    return posY;
  }

  float devolverX() {
    return posX;
  }
}
