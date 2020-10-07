
//rectángulos
void rects (float x1, float y1, float x2, float y2, color c) {
  pushStyle();
  noStroke();
  fill(c);
  rect(x1, y1, x2, y2);
  popStyle();
}

//textos
void txt (float x1, float y1, float x2, float y2, color c, float size, float leading, String texto) {
  pushStyle();
  fill(c);
  textSize(size);
  textLeading(leading);
  text(texto, x1, y1, x2, y2);
  popStyle();
}

//botones
void cambiarPantalla(String pActual, String pSig, float x1, float y1, float x2, float y2 ) {
  if (estado.equals(pActual) ) {
    if (mouseX> width/x1 && mouseY> height/y1 && mouseX< width/x2 && mouseY< height/y2)
      estado = pSig;
  }
}


/* Acá iba a hacer un arreglo para las pociciones de los botones, pero después me di cuenta de que no me servía porque los nombres de mis pantallas 
son String y no números int (y no quería cambiarlos). Además me pareció mucho más sencillo hacer una función a la que le pueda asignar las posiciones,
porque si no iba a terminar haciendo unas 200 líneas más de código para cada arreglo, y se supone que este tp es para optimizar código, je */


//float [][][] botones = new float [9][3][4]; //[Cantidad de pantallas] [Cantidad de botones] [Coordenadas (x1, y1, x2, y2)]

//void iniciarBotones () {
//String [1] botones = new String [4];
//botones [0] [0] = new float [4];
//botones[0][0][0] = width/9.5;     //escena2, botón1, x1
//botones[0][0][1] = height/1.84;   //escena2, botón1, y1
//botones[0][0][2] = width/1.12;    //escena2, botón1, x2
//botones[0][0][3] = height/1.41;   //escena2, botón1, y2
//}
