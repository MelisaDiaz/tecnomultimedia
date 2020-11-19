class NaveJugador {
  //NAVE DE ALVIN (JUGADOR)

  int x, y;
  int tam;
  PImage nave;
  Bala bala;

  NaveJugador ( ) {
    x = width/2;
    y = height/5*4 ;
    tam = 135;

    nave = loadImage ("foto26.png");
    bala = new Bala();
  } 

  void dibujar() {   
    image(nave, x, y, tam, tam);
    bala.dibujar (x, y-67);
    if (x>width) {
      x= -tam;
    }
  }

  void mover( ) {
    //evito que pase borde izquierdo
    if ( x > width-tam/4 ) {  
      if ( keyCode == RIGHT )
        x =width-tam/4;
    }
    //evito que pase borde derecho
    if ( x < tam/4 ) {  
      if ( keyCode == LEFT )
        x =tam/4;
    }
  } 

  // --mueve al personaje hacia la izquierda con la flecha correspondiente
  void moverIzq() {
    if ( keyCode == LEFT )
      x -= 15;
  }


  // --mueve al personaje hacia la derecha con la flecha correspondiente
  void moverDer() {
    if ( keyCode == RIGHT )
      x += 15;
  }
  
  
  void reiniciarJug() {
    x = width/2;
    y = height/5*4 ;
  }
}
