class Bala {
  int bx, by;
  int btam = 10;
  boolean disparada; // para saber si se disparó o no

  Bala() {
  }
  void dibujar(int pbx, int pby ) {

    if (disparada) {
      by -=20;
    } else { 
      by = pby; 
      bx = pbx;
    }

    fill(#D1D1D1);
    ellipse(bx, by, btam/2, btam);
    noStroke();


    if (by<0) {
      disparada = false;
    }
  }

  void disparar () {
    if ( keyCode == UP )
      disparada = true;
  }


  void actualizar() { //reiniciar la bala
    disparada = false;
    reciclar();
  }

  void reciclar() {
    by= (height/5*4)-67;
    bx = width/2;
  }
}
