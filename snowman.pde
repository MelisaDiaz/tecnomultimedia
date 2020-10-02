
class Snowman {
   //variables/propiedades 
  float x, y, t;
  float vx = 4;
  
  //constructor
  Snowman(float posy, float tam ){
   //inicializo las variables
   x = random(0, 900 );
   y = posy;
   t = tam;
    
  }
  //MÉTODOS (funciones)
  
  //dibujar muñeco
  void dibujar(){
    pushStyle();
    strokeWeight( t/50 );
    line(x-t/6, y, x-t/2, y-t/4);
    line(x+t/6, y, x+t/2, y-t/4);
    noStroke();
    fill(255);
    //cabeza
    circle(x, y-t/4, t/4);
    //cuerpo
    circle(x, y, t/3);
    //cuerpo2
    circle(x, y+t/4, t/2);
    //ojos
    fill(0);
    circle(x-t/15, y-t/4, t/50);
    circle(x+t/15, y-t/4, t/50);
    popStyle();
    
  }
  
  //mover
  void mover(){
   x = x+vx; 
    
  }
  
  //rebotar
   void rebotar(){
     if ( x> (width-t/2) ) {   //derecha
       //x = width-t;
       vx = -vx;   
     }
     
     if (x < t/2){ //izquierda
      //x = t;
      vx = -vx;
     }
   }
  
  
  
}
