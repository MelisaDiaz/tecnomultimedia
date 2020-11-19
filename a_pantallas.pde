class Pantallas {
  PImage [] fotos = new PImage [24];
  float posYcred;
  Textos textos;

  Pantallas() {
    //cargo las img
    for (int i = 1; i < 24; i++) {
      fotos [i] = loadImage ("foto" + i + ".png");
    }
    
    posYcred = height+200;
    textos = new Textos();
  }

  void inicio() {
    image (fotos[1], (width/2), (height/3), width, height ); //fondo
    image (fotos[2], (width/2), ((height*3)/4), width, height/4 ); //pastitos
    image (fotos[2], (width/2), ((height*5)/6), width, height/4 );
    image (fotos[2], (width/2), ((height*5.5)/6), width, height/4 );
    image (fotos[3], (width/4), ((height*7)/12), ((width*9)/16), ((height*9)/16) ); //nave espacial
    image (fotos[4], (width/2), ((height*43)/60), (width/4), (height/3) ); //astronauta
    image (fotos[5], (width/2), ((height*11)/12), (width/4), (height/15) ); //clic aquí para iniciar
    textos.globodialogo((width*0.655), (height*0.459), (width*0.4), #E6E62D);
    textos.dibujarTextos(0, (width*0.295), (height*0.14), textos.Titulo, (width*0.0875), 0); //titulos
    textos.dibujarTextos(0, (width*0.3), (height*0.13), textos.Titulo, (width*0.0875), #E6E62D );
    textos.dibujarTextos(2, (width*0.50875), (height*0.41), textos.Dialogo, (width*0.02), 0); //intro
  }

  void despegue() {
    image (fotos[6], width/2, height/2, width, height ); //espacio
    image (fotos[7], 0, height, width*0.48, height*0.64 ); //planeta Tierra
    image (fotos[9], ((width*9)/16), (height*5)/6, width/8, height/6 ); //astronauta
    textos.globodialogo((width*0.67875), (height*0.6), (width*0.325), #E6E62D);
    textos.dibujarTextos(3, (width*0.57), (height*0.53), textos.Dialogo, (width*0.01875), 0);
  }

  void sistemaSolar() {
    background ( 0 );
    image (fotos[10], width/2, height/2, (width*9)/8, (height*5)/6 );//sistema solar
    image (fotos[9], (width*10)/16, (height*5)/6, width/8, height/6 );//astronauta
    textos.globodialogo((width*0.8), (height*0.64), (width*0.325), #E6E62D);
    textos.dibujarTextos(4, width*0.655, height*0.603, textos.Dialogo, (width*0.0175), 0 );

    textos.dibujarTextos(5, width*0.37, height*0.453, textos.Titulo, (width*0.025), 255);
    textos.dibujarTextos(6, width*0.5375, height*0.37, textos.Titulo, (width*0.025), 255);
  }

  void jupiter() {
    image (fotos[19], width/2, height/2, width, height );//júpiter
    image (fotos[9], (width*3)/16, (height*5)/6, width/8, height/6 );//astronauta
    textos.globodialogo (width*0.35, height*0.5834, (width*0.325), #E6E62D);
    textos.dibujarTextos(10, (width*0.2375), (height*0.55), textos.Dialogo, (width*0.01875), 0 );
  }

  void aterrizar() {
    image (fotos[20], width/2, height/2, width, height );//fondo extraterrestres
    image (fotos[14], (width*0.125), height*0.367, width/8, height/6 );//astronauta sorprendido
    textos.globodialogo ((width*0.225), (height*0.1334), (width*0.325), #E6E62D);
    textos.dibujarTextos(11, (width*0.1125), (height*0.09166), textos.Dialogo, (width*0.01875), 0 );
  }

  void conocerExtraterrestres() {
    image (fotos[21], width/2, height/2, width, height );//fondo extraterrestres F
    image (fotos[16], (width*9)/16, height*0.283, width/8, height/6 );//astronauta F
    textos.globodialogo (width*0.7125, height*0.1, (width*0.325), #E6E62D );
    textos.dibujarTextos(12, (width*0.5815), (height*0.091), textos.Dialogo, (width*0.0225), 0 );
    image (fotos[17], (width*3)/16, height/7.5, (width*5)/16, height/8 );//presiona backspace
  }
  
  void nuevoPlaneta(){
      image (fotos[18], width/2, height/2, width, height);//nuevo planeta
      image (fotos[9], (width*9)/16, (height*5)/6, width/8, height/6 );//astronauta
      textos.globodialogo ((width*0.73125), (height*0.6), (width*0.325), #E6E62D );
      textos.dibujarTextos(9, (width*0.615), (height*0.55), textos.Dialogo, (width*0.01875), 0 );
      image (fotos[17], width/2, (height*2)/15, (width*5)/16, height*0.125 );//presiona backspace  
      
      textos.dibujarTextos(15, width/2-110, height*0.50, textos.Titulo, 80, 0);//ganaste
      textos.dibujarTextos(15, width/2-105, height*0.505, textos.Titulo, 80, #E6E62D);
  }
  
  void naveRota(){
      image (fotos[15], width*0.5, height*0.5, width, height);//nave estrellada
      image (fotos[16], ((width*9)/14.5), (height*5.3)/6, (width/8), (height/6) );//astronauta F
      textos.globodialogo ((width*0.7687), (height*0.667), (width*0.325), #E6E62D );
      textos.dibujarTextos(8, (width*0.669), (height*0.67), textos.Dialogo, (width*0.0225), 0 );
      image (fotos[17], (width/2), (height/6), (width*5)/16, height*0.125 );//presiona backspace  
      
      textos.dibujarTextos(14, width/2-130, height*0.50, textos.Titulo, 80, 0);//perdiste
      textos.dibujarTextos(14, width/2-135, height*0.505, textos.Titulo, 80, #E6E62D);
  }
  
  void creditos(){
      image (fotos[6], width/2, height/2, width, height );//fondo espacio
      pushStyle();
      textAlign(CENTER, CENTER);
      textos.dibujarTextos(13, (width/2), posYcred, textos.Dialogo, (width*0.0375), 255 );//créditos
      popStyle();
      posYcred -= 2;
      image (fotos[22], width/2, (height*5)/6, (width*5)/16, height/8 );//presiona enter    
  }
  
  void menuJuego(){
      pushStyle();
      imageMode (CENTER);    
      image (fotos [23], width/2, height/2, width, height); //espacio
      image (fotos [9], width*0.22, height*0.86, width*0.14, height*0.18);//astronauta
  
      fill(230, 230, 45 );
      beginShape ();
      vertex( width*0.34, height*0.81);
      vertex( width*0.3, height*0.84);
      vertex( width*0.34, height*0.83);
      endShape();
      noStroke();
      fill(230, 230, 45 );
      ellipse ( width*0.505, height*0.80, width*0.35, width*0.22 );
      noStroke ();    
      
      textos.dibujarTextos(16, width*0.38, height*0.72, textos.FuenteJuego, (width*0.016), 0 );
      
      textos.dibujarTextos(17, width*0.38, height/2, textos.Titulo, (width*0.15), 0 );
      textos.dibujarTextos(17, width*0.37, height*0.51, textos.Titulo, (width*0.15), #E6E62D );
      popStyle();
    
  }
  
  void jugarJuego(){
    
    image (fotos [11], width/2, height/2, width, height);//fondo planeta
      fill(0);
      stroke (255);
      ellipse (width*0.66, 70, 85, 85);
      ellipse (width*0.35, 70, 85, 85);   

  }
  
  void resetCreditos(){
    posYcred = height+200;
  }
}
