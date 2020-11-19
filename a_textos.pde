class Textos {

  String [] texto = new String [20];

  PFont Titulo;
  PFont Dialogo;
  PFont FuenteJuego;

  Textos() {

    texto [0] = "VIAJE ESPACIAL";
    texto [1] = "VIAJE ESPACIAL";
    texto [2] = "Bienvenidx a este viaje espacial!,\nSoy Calvin y fui elegido para recorrer\nel espacio. Junto con mi nave \nintentaremos conocer algún planeta";
    texto [3] = "       3..2..1..DESPEGUE! \n\n Esta aventura será fabulosa \n Pulsa la barra espaciadora \n para continuar el viaje ";
    texto [4] = "      Desde acá la vista es increíble! \n\n Ahora tú decides a qué planeta iremos \n   Haz click en Marte o Jupiter para  \n      emprender el recorrido";
    texto [5] = "MARTE";
    texto [6] = "JUPITER";
    texto [7] = " Oh! no me esperaba esta lluvia \n de meteoritos. Que hacemos? \n Pulsa:\n           A para continuar viaje o \n           B para desviarnos";
    texto [8] = "Diganle a mi familia \n que los quiero";
    texto [9] = "Que es eso? Parece que\nhemos encontrado un nuevo\n planeta!! Gracias a tu ayuda\n          hicimos un nuevo \n         descubrimiento";
    texto [10] = "Después de varios días de\nrecorrido hemos llegado!\nHaz click en el planeta Jupiter\npara aterrizar";
    texto [11] = "Lo hemos lograddd...eh? \nespera, que es eso verde?\nParece que no estamos solos\nApreta C para ir a hablarles";
    texto [12] = "Hola! vengo en son de paa...\nAAAAAAAHHHHHHH";
    texto [13] = "FIN \n \n \n \n Realizado por Jorgelina Reynoso y Melisa Díaz \n\n\n Universidad Nacional de La Plata \n Facultad de Artes \n\n\n Diseño Multimedial \n Trabajo Práctico Final \n\n\n Comisión 2 \n Profesor Matías Jauregui Lorda";
    
    texto[14] = "GAME OVER";
    texto[15] = "GANASTE";
    texto[16] = "   Ohh no, parece que estamos \nen un aprieto, y no estamos solos!\n Intenta esquivar los meteoritos con\nlas teclas LEFT Y RIGHT y destruye\n la nave del extraterrestre utilizando\n las balas con la tecla UP. \n\n        SUERTE CAMARADA! ";
    texto[17] = "Jugar";
    texto[18] = "Puntos";
    texto[19] = "Vidas";
    
    Titulo = loadFont ( "AgencyFB-Bold-48.vlw" );
    Dialogo = loadFont ( "ArialUnicodeMS-48.vlw" );
    FuenteJuego = loadFont ( "Arial-BoldMT-15.vlw");
  }


  void dibujarTextos(int index, float x, float y, PFont fuente, float size, color c) {
    pushStyle();
    fill(c);
    textFont(fuente);
    textSize(size);
    //textLeading(leading);
    text(texto[index], x, y);
    popStyle();
  }

  void globodialogo (float x, float y, float a, color c) {

    pushStyle();

    fill(c);
    beginShape ();
    vertex( x, y + (height*0.1167));
    vertex( x + (width*0.0375), y + (height*0.1167));
    vertex( x - 20, y + (height*0.1833));
    endShape();
    noStroke();
    ellipse ( x, y, a, (a*0.55) );
    noStroke ();  

    popStyle();
  }
}
