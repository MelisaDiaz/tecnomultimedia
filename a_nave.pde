class Nave {

  int posx1, posy1, tam1;  
  int posx2, posy2, tamX2, tamY2;

  Pantallas pantalla;

  Nave() {
    posx1 = 100;
    posy1 = 600; 
    tam1 = 30;

    posx2 = 0;
    posy2 = 250;
    tamX2 = 250;
    tamY2 = 250;
    pantalla = new Pantallas();
  }

  void dibujarNave1() {
    image(pantalla.fotos[8], posx1, posy1, tam1, tam1 ); //nave1 (diagonal)
  }

  void despegar1() {
    posx1 += 6;
    posy1 -= 8;
    tam1 = tam1 + 3;
  }
  
  
  void dibujarNave2() {

    image(pantalla.fotos[13], posx2, posy2, tamX2, tamY2 );//nave2 (horizontal)
  }
  void despegar2() {
    posx2 = posx2 + 4;
    tamX2 -= 1;
    tamY2 -= 1;
  }
  
  
  void reiniciarNave() {
    posx1 = 100; 
    posy1 = 600; 
    tam1 = 30;
    posx2 = 0;
    posy2 = 250;
    tamX2 = 250;
    tamY2 = 250;
  }
}
