 //<>// //<>//
class Juego {

  //PROPIEDADES
  PImage fondo;
  PImage senal1;
  PImage fondo0;
  PImage fondo2;
  PFont fuente;
  int estado;
  int cant = 3;

  Androide jugador; 
  Humano[] humanos = new Humano[cant];  
  Disparo[] disparos = new Disparo[cant]; 
  Vida vidas; 



  //CONSTRUCTOR -------------------------------------------------------------

  Juego() {  //inicializo los objetos: jugador, humanos, disparos
    textAlign(CENTER, CENTER);

    fondo = loadImage("fondo1.jpg"); 
    fondo0 = loadImage("fondo0.jpg");
    fondo2 = loadImage("fondo2.jpg");
    senal1 = loadImage("señal.png");
    fuente = createFont("Kiona-SemiBold.ttf", 60);
    textFont(fuente); 

    jugador = new Androide();
    for (int i = 0; i < cant; i++) {
      humanos[i] = new Humano(width+i*70, height/1.7+i*80);
      disparos[i] = new Disparo(humanos[i].devolverY(), humanos[i].devolverX() ); //los disparos se generan en la posición de los humanos
    }
    vidas = new Vida();
    estado = 0;
  }


  //MÉTODOS -------------------------------------------------------


  void dibujar() { 
    if (estado == 0) menu();

    if (estado == 1) { //jugar
      pushStyle();
      imageMode(CORNER);
      image(fondo, 0, -250, width, 615);     
      rectMode(CORNERS);
      noStroke();
      fill(100);
      rect(0, 340, width, height);
      image(senal1, width-140, 160, 150, 240);
      popStyle();

      vidas.dibujar_d();
      jugador.dibujar_a();

      for (int i = 0; i < cant; i++) {
        disparos[i].dibujar_c();
        humanos[i].dibujar_b();
      }
    }
  }

  void actualizar() {  
    if (estado == 1) {
      for (int i = 0; i < cant; i++) {
        humanos[i].avanzar_b();
        disparos[i].avanzar_c();
      }
    }
  }

  void reciclar() { 

    for (int i = 0; i < cant; i++) {
      humanos[i].reciclar_b(width+i*20, height/1.7+i*30);
      disparos[i].reciclar_c(humanos[i].devolverY(), humanos[i].devolverX());
    }
  }

  void teclas() {  
    jugador.mover_a();
  }


  void menu() {

    if (estado == 0) { //menu
      pushStyle();
      imageMode(CORNER);
      image(fondo0, 0, 0, width, height);
      rectMode(CENTER);
      noStroke();
      fill(#032393, 200);
      rect(width/2, height/2+50, width/1.5, height/3);

      fill(255);
      textLeading(30);
      textSize(35);
      text("Revolución androide: \n el camino hacia la libertad", width/2, height/2-250);
      textSize(25); 
      text("Estás rodeado de humanos que quieren atraparte. \n Debes escapar de ellos para llegar al aeropuerto y huir.", width/2, height/2);
      textSize(20);
      text("Presiona espacio para jugar", width/2, height/2+100);
      popStyle();    
      if (estado == 0 && keyPressed && key == ' ') estado = 1;
    }
  }

  void ganar () {
    if (jugador.posX > width-100) { 
      estado = 2;
    }
    if (estado == 2) {
      pushStyle();
      imageMode(CORNER);
      image(fondo2, 0, 0, width, height);
      rectMode(CENTER);
      noStroke();
      fill(#1D62B4, 150);
      rect(width/2, height/2, width/1.5, height/3);
      fill(255);
      textSize(55);
      text("Ganaste", width/2, height/2-200);
      textSize(25);
      text("Lograste escapar de los humanos, llegar al aeropuerto \n y tomar tu avión. Ahora eres libre.", width/2, height/2);
      popStyle();
    }
  }

  void perder() {
    estado = 3;
    if (estado == 3) { //perder
      pushStyle();
      background(#09213E);
      fill(255);
      textSize(55);
      text("Perdiste", width/2, height/2-200);
      textSize(25);
      text("Los humanos te atraparon, y a pesar de que lograste librarte de ellos, \n perdiste tu avión, así que deberás ir a la estación de tren.", width/2, height/2);
      popStyle();
    }
  }

  //COLISIONES
  void sacarvidas() { //si un proyectil toca al androide jugador...

    for ( int i = 0; i <disparos.length; i++) {
      float dis = dist( jugador.posX, jugador.posY, disparos[i].posX, disparos[i].posY );

      if ( dis < (jugador.tam/2 + disparos[i].tam) ) { //... le resta una vida y el proyectil se recicla
        disparos[i].posX = 0;
        disparos[i].reciclar_c(humanos[i].devolverY(), humanos[i].devolverX());
        vidas.cant--;
      }
      if (vidas.cant == 0) { //si las vidas llegan a 0, se pierde el juego
        perder();
      }
    }

    for (int i = 0; i< humanos.length; i++) { //si un humano toca al androide jugador...
      float di = dist(jugador.posX, jugador.posY, humanos[i].posX, humanos[i].posY);

      if ( di < (jugador.tam/2 + humanos[i].tam/4) ) { //...el juego se pierde
        perder();
      }
    }
  }
}
