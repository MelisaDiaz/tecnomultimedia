//Desafío: programar una clase que tenga un comportamiento autónomo 
//(es decir, que mute sin interacción: movimiento, color, sprite, etc).

int j = 5; //cantidad de muñecos
Snowman[] s = new Snowman[j];


void setup(){
 size(1000, 600); 
 for ( int i = 0; i < j; i++) {   
  s[i] = new Snowman(400, 200);  //se puede cambiar la posY y el tamaño
 }
}

void draw(){
  background(#B8F5FC);
  for (int i = 0; i < j; i++) {  
  s[i].dibujar();
  s[i].rebotar();
  s[i].mover();
  }
}
