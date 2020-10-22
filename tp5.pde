// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// Melisa Irina Díaz
// Revolución androide: el camino hacia la libertad

/*  Propuesta
 El videojuego comienza en la escena 9 de mi aventura gráfica, cuando el jugador decide ir al aeropuerto.
 El protagonista del juego va a ser el androide protagonista de la aventura gráfica. El androide va a tener que evadir a los humanos
 que tratan de matarlo para así poder cumplir con su objetivo: llegar al aeropuerto para escapar. Los humanos se generan en el borde 
 derecho de la pantalla y lanzan proyectiles de sus armas. El juego se gana cuando el jugador llega al aeropuerto (borde derecho de la pantalla), 
 y se pierde si los humanos le disparan X cantidad de veces.
*/



Juego j;

void setup() {
  size(1300, 700);
  j = new Juego();
}

void draw() {
  background(200);
  j.dibujar();
  j.actualizar();
  j.reciclar();
  j.ganar();
  j.sacarvidas();
}

void keyPressed() {
  j.teclas();
}
