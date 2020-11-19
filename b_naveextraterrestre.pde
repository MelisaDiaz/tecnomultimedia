class Naveextraterrestre {

  float posx, posy;
  float nt;
  PImage naveext; 
  boolean sentido; 

  Naveextraterrestre() {
    posx = width/2;
    posy = height*0.30;
    nt = 90;
    naveext = loadImage ("foto27.png");
  }

  void reiniciarNave() {
    posx = width/2;
    posy = height*0.30;
 
  }
  void dibujar () {
    image (naveext, posx, posy, nt, nt);   
    if ( posx > width-nt/2 ) {
      sentido = false; //cuando toca el borde derecho
    }

    if ( posx < nt/2 ) {
      sentido = true; //cuando toca el borde izquierdo
    }

    //actualizar valores: ejecutar movimiento
    if ( sentido ) {
      posx= posx +6; //va hacia la derecha
    } else {
      posx = posx -6; //va hacia la izquierda
    }
  }
}
