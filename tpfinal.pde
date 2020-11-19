/*
Tecno Multimedia 1: TP Final - Aventura gráfica y juego con objetos
Comisión 2 - Grupo 7 - Jorgelina Reynoso y Melisa Díaz
*/

Aventura aventura;
import processing.sound.*;
SoundFile musicaDeFondo;


void setup() {
  size (800, 600);
  surface.setResizable(true);
  aventura = new Aventura();

  musicaDeFondo = new SoundFile(this, "aventura.wav"); //cargo el archivo de audio
  musicaDeFondo.loop();
}

void draw() {
  aventura.dibujarAventura();
}

void keyPressed() {
  aventura.teclas();
}

void mousePressed() {
  aventura.clicMouse();
}
