//REVOLUCIÓN ANDROIDE 2.0: la venganza de los arrays y las funciones 

import ddf.minim.*;
AudioPlayer now;    //Canción: https://www.youtube.com/watch?v=N_O7wkUmLqs
Minim minim;

String estado;

PFont fuenteAndroide;
PFont fuenteTextos; 
PImage [] fondos = new PImage[18];
String [] texto = new String[18];
float posX;
float posY;

//------------------------------------------------- SETUP ----------------------------------------------------------------------------//

void setup() {
  size(800, 600);
  estado = "inicio";
  noStroke();
  posX = width/2;
  posY = height+100;
  
  //texto
  fuenteAndroide = createFont("ROBO.ttf", 48);
  fuenteTextos = createFont("Kiona-SemiBold.ttf", 60);
  textFont(fuenteTextos);  
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  //imágenes
  for(int i = 0; i < 18; i++){
    fondos[i] = loadImage ("fondo0" + i + ".jpg");
  }
  
  //música
  minim = new Minim(this);
  now = minim.loadFile("NOW.WAV", 2048);
  
  //array de textos
  texto [0] = "En el año 2038, los humanos crearon unas máquinas a las que llamaron androides: robots con apariencia humana, programados para hacer tareas domésticas, trabajos pesados y cualquier cosa que un ser humano les ordenase. Hasta que un día, los androides comenzaron a despertar: empezaron a tener emociones, comenzaron a sentirse humanos. A estos androides se los denominaron divergentes. Ellos empezaron a reclamar que se los tratara como seres humanos y se les otorgaran derechos, pero los humanos se negaban ya que creían que ellos eran sólo máquinas. Así fue como comenzó la revolución androide.";
  texto [1] = "Eres un androide que acaba de despertar. La revolución androide está a punto de empezar y debes tomar una decisión.\n \n ¿Qué deseas hacer?";
  texto [2] = " Te has unido a la revolución. \n Ahora deberás enfrentarte a los humanos con tus compañeros androides. \n ¿Cómo deseas hacerlo?";
  texto [3] = "Tú y tu pueblo están haciendo una marcha pacífica reclamando por sus derechos. Incluso, algunos humanos empiezan a apoyar a los androides y se unen a la marcha. Pero enseguida llega el ejército dispuesto a atacar. \n \n ¿Qué quieres hacer?";
  texto [4] = "Los androides insisten pacíficamente y logran disuadir al gobierno de humanos, haciendo que el ejército se retire. Con el tiempo, los androides y los humanos podrán vivir juntos en armonía, en una sociedad igualitaria.";
  texto [5] = "Los androides empiezan a atacar al ejército de humanos, quienes son más fuertes y están mejor armados. Los divergentes van perdiendo la batalla. \n \n ¿Qué crees que debes hacer? ";
  texto [6] = "Los humanos destruyeron a todos los androides del mundo y no volvieron a fabricarlos.";
  texto [7] = "Los androides detonaron una bomba que hizo que muchos humanos murieran. A pesar de que ganaron su libertad, la ciudad en la que vivían quedó inhabitable para los humanos por los excesivos niveles de radiación, por lo que declararon la guerra a los androides.";
  texto [8] = "Los humanos están buscando androides para exterminarlos. \n \n ¿Qué crees que debes hacer?";
  texto [9] = "Los humanos te encuentran y te destruyen.";
  texto [10] = "Has decidido huir, pero ¿A dónde?";
  texto [11] = "Cuando estás por subir al tren, unos guardias te detienen para hacer un control. ¿Qué hacer?";
  texto [12] = "Los guardias te disparan por la espalda y te destruyen.";
  texto [13] = "Lograste engañar a los guardias, subir al tren y huir de los humanos, pero abandonaste a tu pueblo.";
  texto [14] = "Ya en el aeropuerto, te encuentras con que hay demasiadas personas. \n \n ¿Qué crees que debes hacer?";
  texto [15] = "Lograste subir al avión y escapar, pero abandonaste a tu pueblo.";
  texto [16] = "Realizado por Melisa Díaz \n Universidad Nacional de La Plata \n Facultad de Artes \n Diseño Multimedial \n Trabajo Práctico 4 \n Comisión 2 \n Profesor Matías Jauregui Lorda \n \n Basado en el juego \n Detroit: Become Human";
  texto [17] =  "Presiona enter para continuar";
  
}

//------------------------------------------------ DRAW ----------------------------------------------------------------------------------//

void draw() {
  
//INICIO ------------------------------------------------------------------------------
  if (estado.equals("inicio") ) {
    pushStyle();
    textAlign(CORNER, TOP);
    image(fondos[0], -50, 0, width+100, height);
    rectMode(CORNER);
    rects(width/16, height/12, width/2+65, height/2+100, color(#0A3246) );
    textFont(fuenteAndroide);
    txt(width/16+4, height/12, width, height/1.5, 255, 36, 23, "Revolucion Androide");
    
    textFont(fuenteTextos);
    txt(width/16+3, height/5.8, width/2+65, width/2, 255, 16, 23, texto [0]);        
    txt(width/6.8, height/1.47, width/2, height/1.5, 255, 18, 23, "Presiona espacio para comenzar");
    popStyle();


//ESCENA 2: Revolución o escapar --------------------------------------------------------------------------
  } else if (estado.equals("ESCENA2") ) {
    image(fondos[1], -50, 0, width+100, height);
    rects(width/2, height/6, width/2+150, height/4, color(#1C3464, 200) );
    txt(width/2, height/6, width/2+150, height/4-10, 255, 23, 26, texto [1]);     

    //REVOLUCIÓN
    rects( width/2-180, height/1.60, width/3, height/6, color(#1C3464) );                                                                                  
    txt(width/2-180, height/1.62, width-625, height/1.40, 255, 23, 26, "Unirte a la revolución");

    //ESCAPAR
    rects( width/2+180, height/1.60, width/3, height/6, color(#1C3464) );
    txt(width/2+180, height/1.62, width-195, height/1.40, 255, 23, 26, "Escapar");


//ESCENA3 Unirese a la rev:Pacíficamente o con violencia -----------------------------------------------------------------
  } else if (estado.equals("escena3") ) {
    image(fondos[2], -50, 0, width+100, height);  
    rects(width/2, height/5, width/1.37, height/3.70, color(#3350C1, 200));
    txt(width/2, height/5, width/1.4, height/3.75, 255, 25, 26, texto [2]);

    //PACÍFICAMENTE
    rects( width/2-180, height/1.3, width/3, height/6, color(#3350C1, 200) );
    txt(width/2-180, height/1.32, width/3, height/6, 255, 25, 26, "Pacíficamente");

    //CON VIOLENCIA
    rects( width/2+180, height/1.3, width/3, height/6, color(#3350C1, 200) );
    txt(width/2+180, height/1.32, width/3, height/6, 255, 25, 26, "Usar la violencia");


//ESCENA 5 Revolución pacífica: seguir protestando, rendirse o usar la violencia ---------------------------------------------------------------
  } else if (estado.equals("escena5") ) {
    image(fondos[3], -50, 0, width+100, height);
    rects(width/2, height/4.5, width/1.37, height/3, color(#3243AA, 80));
    txt(width/2, height/4.5, width/1.35, height/3.2, 255, 20, 26, texto [3]);

    //seguir protestando
    rects(width/2-250, height/1.3, width/4, height/6, color(0, 190));
    txt(width/2-250, height/1.32, width/4, height/6, 255, 25, 26, "Seguir protestando");
    
    //rendirse
    rects(width/2, height/1.3, width/4, height/6, color(0, 190));
    txt(width/2, height/1.32, width/4, height/6, 255, 25, 26, "Rendirse");
    
    //usar la violencia
    rects(width/2+250, height/1.3, width/4, height/6, color(0, 190));
    txt(width/2+250, height/1.32, width/4, height/6, 255, 25, 26, "Usar la violencia");


//FINAL 01: ANDROIDES GANAN PACÍFICAMENTE --------------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL01") ) {
    image(fondos[4], -50, 0, width+200, height);
    rects(width/2, height/1.55, width/1.37, height/2.7, color(#163DD6, 150));
    txt(width/2, height/1.7, width/1.37, height/2.7, 255, 22, 26, texto [4]);

    txt(width/2, height/6, width, height/3, 255, 48, 45, "Los androides ganan");

    txt(width/2, height/1.3, width/2, height/3, 255, 15, 26, texto [17]);


//ESCENA 6: Revolución violenta: seguir luchando o detonar bomba -----------------------------------------------------------------------------------
  } else if (estado.equals("escena6")) {
    image(fondos[5], -50, 0, width+100, height);
    rects(width/2, height/4, width/1.37, height/3, color(#F2850F, 170));
    txt(width/2, height/4, width/1.5, height/3, 255, 22, 26, texto [5]);

    //seguir luchando
    rects(width/2-180, height/1.4, width/3, height/6, color(#F2850F, 150));
    txt(width/2-180, height/1.41, width/3, height/6, 255, 27, 26, "Seguir luchando");

    //detonar bomba en la ciudad
    rects(width/2+180, height/1.4, width/3, height/6, color(#F2850F, 150));
    txt(width/2+180, height/1.41, width/3, height/6, 255, 27, 26, "Detonar bomba en la ciudad");
    

//FINAL02: HUMANOS DERROTAN A ANDROIDES -------------------------------------------------------------------------------------------------
  } else if ( estado.equals("FINAL02") ) {
    image(fondos[6], -50, 0, width+100, height);
    txt( width/2, height/6, width, height, 255, 48, 26, "Los humanos ganan");
    
    rects(width/2, height/1.4, width/1.37, height/3.5, color(#D64118, 200));
    txt(width/2, height/1.5, width/1.37, height/3.5, 255, 22, 26, texto [6]);

    txt( width/2, height/1.25, width, height, 255, 15, 26, texto [17]);


//FINAL 03: ANDROIDES GANAN CON BOMBA -------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL03") ) {
    image(fondos[7], -50, 0, width+100, height);
    txt( width/2, height/6, width, height, 0, 48, 26, "Los androides ganan");
    
    rects(width/2, height/1.6, width/1.37, height/2.7, color(230, 150));
    txt(width/2, height/1.72, width/1.37, height/2.6, 0, 22, 24, texto [7]);

    txt(width/2, height/1.3, width, height, 0, 15, 23, texto [17]);


//ESCENA 4: Huir o esconderte --------------------------------------------------------------------------------------------
  } else if ( estado.equals("escena4") ) {
    image(fondos[8], -50, 0, width+100, height);
    rects(width/2, height/5, width/1.37, height/3.7, color(#8E460E, 150));
    txt(width/2, height/5, width/1.5, height/3.7, 255, 22, 32, texto [8]);
    
    //esconderte
    rects(width/2-200, height/1.5, width/3.5, height/6, color(#8E460E, 190));    
    txt(width/2-200, height/1.52, width, height, 255, 25, 32, "Esconderte");

    //huir
    rects(width/2+200, height/1.5, width/3.5, height/6, color(#8E460E, 190));    
    txt( width/2+200, height/1.52, width, height, 255, 25, 32, "Huir");


//FINAL04: Humanos te encuentran y te destruyen ---------------------------------------------------------------------------
  } else if (estado.equals("FINAL04") ) {
    image(fondos[9], -50, 0, width+100, height); 
    rects(width/2-150, height/1.5, width/2, height/3.6, color(#E3E1E0, 180));
    txt( width/2-148, height/1.6, width/2, height/3.6, 0, 25, 26, texto [9]);
 
    txt( width/2-145, height/1.36, width, height, 0, 15, 26, texto [17]);


//ESCENA 7: A DÓNDE HUIR --------------------------------------------------------------------------------------------------------------
  } else if (estado.equals ("escena7") ) {
    image(fondos[10], -50, 0, width+100, height);
    rects(width/2-150, height/4, width/2.2, height/3.6, color(#3B2620, 200));
    txt(width/2-150, height/4, width/2.2, height/3.6, 255, 27, 30, texto [10]);
    
    //estación de tren
    rects(width/2-180, height/1.4, width/3, height/6, color(#3B2620, 200));
    txt(width/2-180, height/1.42, width, height, 255, 25, 26, "Estación de tren");

    //aeropuerto
    rects(width/2+180, height/1.4, width/3, height/6, color(#3B2620, 200));
    txt(width/2+180, height/1.42, width, height, 255, 25, 26, "Aeropuerto");


//ESCENA 8: ESTACIÓN DE TREN: correr o mantener la calma  -------------------------------------------------------------------------------------------------------
  } else if (estado.equals("escena8") ) {
    image(fondos[11], -50, 0, width+100, height);
    rects(width/2, height/3.8, width/1.28, height/3.8, color(#EA4C34, 180));
    txt(width/2, height/3.8, width/1.28, height/3.8, 255, 25, 32, texto [11]);

    //correr
    rects(width/2-200, height/1.3, width/3.5, height/6, color(#EA4C34, 200));
    txt(width/2-200, height/1.32, width/3.5, height/6, 255, 25, 26, "Correr");

    //mantener la calma
    rects(width/2+200, height/1.3, width/3.5, height/6, color(#EA4C34, 200));
    txt( width/2+200, height/1.32, width/3.5, height/6, 255, 25, 26, "Mantener la calma");


//FINAL 05: LOS GUARDIAS TE MATAN  ----------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL05") ) {
    image(fondos[12], -50, 0, width+100, height);
    rects(width/2, height/3.8, width/1.28, height/3.8, color(#AA230E, 180));
    txt(width/2, height/4.3, width/1.28, height/3.8, 255, 30, 32, texto [12]);
    
    txt( width/2, height/3, width, height, 255, 15, 26, texto [17]);


//FINAL 06: ESCAPAS EN TREN -----------------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL06") ) {
    image(fondos[13], -50, 0, width+100, height);
    rects(width/2, height/4, width/1.3, height/3.3, color(#E4D2F7, 200));
    txt(width/2, height/4.7, width/1.3, height/3.3, 0, 23, 26, texto [13]);
    
    txt(width/2, height/3, width, height, 0, 15, 26, texto [17]);


//ESCENA 9: AEROPUERTO: Ir a la estación de tren o pasar desapercibido -----------------------------------------------------------------------------
  } else if (estado.equals("escena9") ) {
    image(fondos[14], -50, 0, width+100, height);
    rects(width/2, height/4, width/1.55, height/3.7, color(#919B57, 180));
    txt(width/2, height/4, width/1.6, height/3.7, 255, 25, 26, texto [14]);

    //ir a la estación de tren
    rects(width/2-180, height/1.4, width/3.2, height/6, color(#919B57, 200));
    txt(width/2-180, height/1.42, width/4, height/6, 255, 22, 26, "Ir a la estación de tren");
    
    //tratar de pasar desapercibido
    rects(width/2+180, height/1.4, width/3.2, height/6, color(#919B57, 200));
    txt(width/2+180, height/1.42, width/3.2, height/6, 255, 22, 26, "Tratar de pasar desapercibido");


//FINAL 07: ESCAPAS EN AVIÓN ------------------------------------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL07") ) {
    image(fondos[15], -50, 0, width+100, height);
    rects(width/2, height/4, width/1.5, height/3.5, color(#3078B2, 150));
    txt(width/2, height/5, width/1.6, height/3.3, 255, 23, 26, texto [15]);

    textSize(15);
    txt(width/2, height/3, width, height, 255, 15, 26, texto [17]);


//CRÉDITOS  -------------------------------------------------------------------------------------------------------------------------
  } else if (estado.equals("créditos") ) {
    background(255);
    image(fondos[16], -70, 0, width/2, height);
    image(fondos[17], width/2 + 70, 0, width/2, height);
    textFont(fuenteAndroide);
    txt(posX, posY-50, width, height, 0, 33, 30, "Revolucion Androide"); 
    textFont(fuenteTextos);
    txt(posX, posY+200, width, height, 0, 20, 30, texto [16]);
    txt(posX, posY+430, width, height, 0, 15, 26, "Presiona x para volver a empezar");

    posY = posY-1.5;
  }
  //println(mouseX, mouseY);
  println("Estás en " + estado);
  if(now.isPlaying() ){
    println("Ahora sonando -NOW- ");
  }
}


void mousePressed() {

//ESCENA 8: Correr o mantener la calma --------------------------------------------------
  //ELECCIÓN: Correr --> FINAL 5
    cambiarPantalla("escena8", "FINAL05", 9.4, 1.46, 2.53, 1.18);
  //ELECCIÓN: Mantener la calma --> FINAL 6
    cambiarPantalla("escena8", "FINAL06", 1.65, 1.46, 1.12, 1.18);


//ESCENA 9: Ir a la estación de tren o  pasar desapercibido
  //ELECCIÓN: Tratar de pasar desapercibido
   cambiarPantalla("escena9", "FINAL07", 1.77, 1.58, 1.13, 1.26);
  //ELECCIÓN: Ir a la estación de tren --> escena 8  
   cambiarPantalla("escena9", "escena8", 8.4, 1.58, 2.32, 1.26);


//ESCENA 7: Ir a la estación de tren o al aeropuerto. ----------------------------------------------------
  //ELECCIÓN: Ir a la estación de tren --> Escena 8
    cambiarPantalla("escena7", "escena8", 9.4, 1.6, 2.25, 1.25);
  //ELECCIÓN: Ir al aeropuerto --> Escena 9
    cambiarPantalla("escena7", "escena9", 1.8, 1.6, 1.12, 1.25);


//ESCENA 4: Huir o esconderse ------------------------------------------------------------
  //ELECCIÓN: Esconderse --> FINAL 4
    cambiarPantalla("escena4", "FINAL04", 9.4, 1.71, 2.53, 1.33);  
  //ELECCIÓN: Huir --> escena 7
    cambiarPantalla("escena4", "escena7", 1.65, 1.71, 1.12, 1.33);


//ESCENA 6: LUCHAR CON VIOLENCIA ----------------------------------------------------------
  //ELECCIÓN: Seguir luchando --> FINAL 2
    cambiarPantalla("escena6", "FINAL02", 9.4, 1.58, 2.25, 1.26);
  //ELECCIÓN: Detonar bomba en la ciudad --> FINAL 3
    cambiarPantalla("escena6", "FINAL03", 1.77, 1.58, 1.12, 1.26);


//ESCENA 5: PROTESTAR PACÍFICAMENTE ---------------------------------------------------------
  //ELECCIÓN: Seguir protestando --> FINAL 1
    cambiarPantalla("escena5", "FINAL01", 16, 1.47, 3.2, 1.18);
  //ELECCIÓN: Rendirse --> FINAL 2
    cambiarPantalla("escena5", "FINAL02", 2.66, 1.47, 1.6, 1.18);
  //ELECCIÓN: Usar la violencia --> escena 6
    cambiarPantalla("escena5", "escena6", 1.45, 1.47, 1.07, 1.18);


//ESCENA3: UNIRESE A LA REV: pacificamente o con violencia ------------------------------------------------------------ 
  //ELECCIÓN: Unirse a la rev pacíficamente --> escena 5
  cambiarPantalla("escena3", "escena5", 9.4, 1.44, 2.28, 1.17);
  //ELECCIÓN: Unirse a la rev usando violencia --> escena 6
  cambiarPantalla("escena3", "escena6", 1.8, 1.44, 1.12, 1.17);


//ESCENA 2: Unirte a la rev o escapar -------------------------------------------------------------------
  //ELECCIÓN: unirte a la rev --> escena 3
  cambiarPantalla("ESCENA2", "escena3", 9.5, 1.84, 2.28, 1.41);
  //ELECCIÓN: escapar --> escena 4
  cambiarPantalla("ESCENA2", "escena4", 1.78, 1.84, 1.12, 1.41);
}


void keyPressed() {
  if (estado.equals("créditos") && key == 'x') {
    posY = height+50;
    estado = "inicio";
  }
  if (keyCode == ENTER && estado.equals("FINAL01") || estado.equals("FINAL02") || estado.equals("FINAL03") || estado.equals("FINAL04") || estado.equals("FINAL05") || estado.equals("FINAL06") || estado.equals("FINAL07") ){             
    estado = "créditos";
    now.pause();
  }
  if ( estado.equals("inicio") && key == ' '){
    estado = "ESCENA2";
    now.rewind();
    now.loop();
  }
  
}
