
class Meteorito{
  
  float mx, my;
  float mvel;
  float mtam;
  boolean chocado;
  PImage meteorito;
 
  Meteorito() {
     mx = random (0, width);
    my = -200;
    mtam = random (40, 70);
    mvel = random (3,7);
    chocado = false;
    
  meteorito = loadImage ("foto25.png");

  meteorito.resize( int(mtam), int(mtam) ); 
}

  //---------------------------------------------
  // METODOS > funciones
  
  void actualizar() {
   my += mvel;
   if ( my > height + mtam/2 ) {
   reciclar();
  }
 }
 
  void dibujar(){
   //si no lo choca
   if (!chocado) { 
   image( meteorito, mx, my );
   imageMode (CENTER);
  } 
   //si lo choca
   else {
   reciclar();  
  }
 }


 void chocado (){
  chocado = true;
  }


 void reciclar() {
    mx = random( width );
    my = random (-50, 0);
    mtam = random( 40, 70 );
    mvel = random( 3, 7 );  
}

 }
