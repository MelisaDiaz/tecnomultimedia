class Juego {

  // PROPIEDADES (variables)
  int estado = 0; 
  int disparos; // contador de disparos que hacen contacto con la nave
  int vidas = 3;
  int c = 12;
  PImage explosion;

  Pantallas pantalla;
  Textos textos;
  Naveextraterrestre extraterrestre;
  NaveJugador jugador;
  Meteorito[] meteoritos = new Meteorito [c];

  Juego () {
    jugador = new NaveJugador();
    extraterrestre = new Naveextraterrestre();
    explosion = loadImage("foto24.png");
    for ( int i = 0; i < c; i++ ) {
      meteoritos[i] = new Meteorito ();
    }
    textos = new Textos();
    pantalla = new Pantallas();
  }    

  void jugar() {
    println(estado);

    menu();
    empezar();
    ganaste();
    perdiste();
  } 

  // -----------------------------------------------------
  // METODOS (funciones) 

  void menu() { 
    if (estado ==0) {

      pantalla.menuJuego();
      if ( mousePressed && mouseX > (width*0.4) && mouseX < (width*0.67) && mouseY > (height*0.35) && mouseY < (height*0.55))estado= 1; 
      vidas = 3; 
      disparos =0;
    }
  }
  void empezar() {      
    if (estado==1) {

      pantalla.jugarJuego();
      jugador.dibujar();
      extraterrestre.dibujar();
      disparoExtraterrestre(); 
      perderVidas();

      for ( int i = 0; i < c; i++ ) {  
        meteoritos[i].dibujar();
        meteoritos[i].actualizar();
      }

      fill(255);
      textFont ( textos.FuenteJuego );
      text("Puntos", width*0.63, 70);
      text (disparos, width*0.65, 87);
      text("Vidas", width*0.33, 70);
      text(vidas, width*0.35, 87); 

      if (vidas == 0) {
        estado = 2;
      }
      if (disparos == 30) estado =3;
    }
  }

  void reiniciarTodo() {
    estado = 0;
    vidas = 3;
    disparos = 0;
    jugador.reiniciarJug();
    extraterrestre.reiniciarNave();   
    for ( int i = 0; i < c; i++ ) {
      meteoritos[i].reciclar();
    }
  }

  void perdiste() {
    if (estado == 2) { 
      pantalla.naveRota();
      if (keyCode== BACKSPACE)aventura.cambiarEstado("creditos");
      } 
   } 

    
   void ganaste() {
    if (estado == 3) {
      pantalla.nuevoPlaneta();
      if (keyCode== BACKSPACE)aventura.cambiarEstado("creditos");
    }
  }

  //----- método para descontar vida cuando un meteorito toca la nave --//
  void perderVidas() {
    for (int i=0; i<c; i++) {
      float distan = dist(meteoritos[i].mx, meteoritos[i].my, jugador.x, jugador.y );
      if (distan < meteoritos[i].mtam ) {
        meteoritos[i].reciclar();
        meteoritos[i].chocado();
        image (explosion, jugador.x, jugador.y, 300, 300);
        vidas--; 
        fill(255);
        ellipse (width*0.35, 70, 100, 100);
      }
    }
  }

  //----- método para detectar el contacto entre la bala y el extraterrestre --//
  void disparoExtraterrestre() {
    for (int i=0; i<c; i++) {
      float distan = dist(jugador.bala.bx, jugador.bala.by, extraterrestre.posx, extraterrestre.posy );
      if (distan < extraterrestre.nt/2 ) {
        disparos = disparos + 10;
        image (explosion, extraterrestre.posx, extraterrestre.posy, 300, 300);
        jugador.bala.actualizar(); // reinicia la bala
        fill(255);
        ellipse (width*0.66, 70, 100, 100);
      }
    }
  }    

  void teclas() {
    jugador.moverDer();
    jugador.moverIzq();
    jugador.bala.disparar();
    jugador.mover();
  }
}
