//REVOLUCIÓN ANDROIDE 2.0: la venganza de los arrays y las funciones 

import ddf.minim.*;   //con música épica y todo

AudioPlayer now;    //Canción: https://www.youtube.com/watch?v=N_O7wkUmLqs
Minim minim;


String estado;

PFont fuenteAndroide;
PFont fuenteTextos;

//imágenes  
PImage[] fondos = new PImage[18];


float posX;
float posY;



//--------------------------------------------------------------------------------------------------------------------------------------

void setup() {
  size(800, 600);
  estado = "inicio";

  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  noStroke();

  posX = width/2;
  posY = height+50;
  //texto
  fuenteAndroide = createFont("ROBO.ttf", 48);
  fuenteTextos = createFont("Kiona-SemiBold.ttf", 60);
  

  //imágenes
  for(int i = 0; i < 18; i++){
    fondos[i] = loadImage ("fondo0" + i + ".jpg");
  }
  
  minim = new Minim(this);
  now = minim.loadFile("NOW.WAV", 2048);

}

//----------------------------------------------------------------------------------------------------------------------------------//

void draw() {
  
  //INICIO ------------------------------------------------------------------------------
  if (estado.equals("inicio") ) {
    textAlign(CORNER, TOP);
    image(fondos[0], -50, 0, width+100, height);
    rectMode(CORNER);
    
    rects(48, 50, 465, 400, color(#0A3246));

    fill(255);
    textFont(fuenteTextos);
    textSize(15);

    text("En el año 2038, los humanos crearon unas máquinas a las que llamaron androides: robots con apariencia humana, programados para hacer tareas domésticas, trabajos pesados y cualquier cosa que un ser humano les ordenase. Hasta que un día, los androides comenzaron a despertar: empezaron a tener emociones, comenzaron a sentirse humanos. A estos androides se los denominaron divergentes. Ellos empezaron a reclamar que se los tratara como seres humanos y se les otorgaran derechos, pero los humanos se negaban ya que creían que ellos eran sólo máquinas. Así fue como comenzó la revolución androide.", 50, 110, 465, 400);        //arreglos

    textSize(18);
    text("Presiona espacio para comenzar", 118, 400);

    textFont(fuenteAndroide);
    textSize(36);
    text("Revolucion Androide", 50, 50);



    //ESCENA 2: Revolución o escapar --------------------------------------------------------------------------
  } else if (estado.equals("ESCENA2") ) {
    
    textAlign(CENTER, CENTER);
    rectMode(CENTER);

    image(fondos[1], -50, 0, width+100, height);

    rects(width/2, height/6, width/2+150, height/4, color(#1C3464, 200) );

    textFont(fuenteTextos);
    textSize(23);
    fill(255);
    textLeading(width/30);
    text("Eres un androide que acaba de despertar. La revolución androide está a punto de empezar y debes tomar una decisión.\n \n ¿Qué deseas hacer?", width/2, height/6, width/2+150, height/4-10);     



    //REVOLUCIÓN
    rects( width-615, height/1.60, width/3, height/6, color(#1C3464) );                                                                                  
    text("Unirte a la revolución", width-615, height/1.62, width-625, height/1.40);

    //ESCAPAR
    rects( width-185, height/1.60, width/3, height/6, color(#1C3464) );
    text("Escapar", width-185, height/1.62, width-195, height/1.40);



    //ESCENA3 Unirese a la rev:Pacíficamente o con violencia -----------------------------------------------------------------
  } else if (estado.equals("escena3") ) {
    image(fondos[2], -50, 0, width+100, height);
    
    textAlign(CENTER, CENTER);
    rectMode(CENTER);
    noStroke();
    rects(width/2, height/5, width/1.37, height/3.70, color(#3350C1, 200));

    textFont(fuenteTextos);
    textSize(25);
    fill(255);
    
    textLeading(width/30);
    text(" Te has unido a la revolución. \n Ahora deberás enfrentarte a los humanos con tus compañeros androides. \n ¿Cómo deseas hacerlo?", width/2, height/5, width/1.4, height/3.75);


    //PACÍFICAMENTE
    rects( width-605, height/1.3, width/3, height/6, color(#3350C1, 200) );
    text("Pacíficamente", width-605, height/1.32);

    //CON VIOLENCIA
    rects( width-195, height/1.3, width/3, height/6, color(#3350C1, 200) );
    text("Usar la violencia", width-195, height/1.32, width/3, height/6);




    //ESCENA 5 Revolución pacífica: seguir protestando, rendirse o usar la violencia ---------------------------------------------------------------
  } else if (estado.equals("escena5") ) {
    image(fondos[3], -50, 0, width+100, height);
    textAlign(CENTER, CENTER);
    rectMode(CENTER);

    rects(width/2, height/4.5, width/1.37, height/3, color(#3243AA, 80));

    textFont(fuenteTextos);
    textSize(20);
    fill(255);
    textLeading(width/30);
    text("Tú y tu pueblo están haciendo una marcha pacífica reclamando por sus derechos. Incluso, algunos humanos empiezan a apoyar a los androides y se unen a la marcha. Pero enseguida llega el ejército dispuesto a atacar. \n \n ¿Qué quieres hacer?", width/2, height/4.5, width/1.35, height/3.2);


    //seguir protestando
    rects(width/2-250, height/1.3, width/4, height/6, color(0, 190));
    textSize(25);
    fill(255);
    textLeading(width/30);
    text("Seguir protestando", width/2-250, height/1.32, width/4, height/6);
    
    
    //rendirse
    rects(width/2, height/1.3, width/4, height/6, color(0, 190));
    textLeading(width/30);
    text("Rendirse",  width/2, height/1.32, width/4, height/6);
    
    
    //usar la violencia
    rects(width/2+250, height/1.3, width/4, height/6, color(0, 190));
    textLeading(width/30);
    text("Usar la violencia",  width/2+250, height/1.32, width/4, height/6);



    //FINAL 01: ANDROIDES GANAN PACÍFICAMENTE --------------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL01") ) {
    image(fondos[4], -50, 0, width+200, height);
    textAlign(CENTER, CENTER);
    
    rects(width/2, height/1.55, width/1.37, height/2.7, color(#163DD6, 150));


    textFont(fuenteTextos);
    textSize(22);
    fill(255);

    textLeading(width/30);
    text("Los androides insisten pacíficamente y logran disuadir al gobierno de humanos, haciendo que el ejército se retire. Con el tiempo, los androides y los humanos podrán vivir juntos en armonía, en una sociedad igualitaria.", width/2, height/1.7, width/1.37, height/2.7);

    textSize(48);
    text("Los androides ganan", width/2, height/6);

    textSize(15);
    text("presiona enter para continuar", width/2, height/1.3);



    //ESCENA 6: Revolución violenta: seguir luchando o detonar bomba -----------------------------------------------------------------------------------
  } else if (estado.equals("escena6")) {
    image(fondos[5], -50, 0, width+100, height);
    textAlign(CENTER, CENTER);

    
    rects(width/2, height/4, width/1.37, height/3, color(#F2850F, 170));

    textFont(fuenteTextos);
    textSize(22);
    fill(255);
    
    textLeading(width/30);
    text("Los androides empiezan a atacar al ejército de humanos, quienes son más fuertes y están mejor armados. Los divergentes van perdiendo la batalla. \n \n ¿Qué crees que debes hacer? ", width/2, height/4, width/1.5, height/3);

    //seguir luchando
    textSize(27);
    rects(width/2-180, height/1.4, width/3, height/6, color(#F2850F, 150));
    text("Seguir luchando", width/2-180, height/1.41, width/3, height/6);
    

    //detonar bomba en la ciudad
    rects(width/2+180, height/1.4, width/3, height/6, color(#F2850F, 150));
    textLeading(width/30);
    text("Detonar bomba en la ciudad", width/2+180, height/1.41, width/3, height/6);
    


    //FINAL02: HUMANOS DERROTAN A ANDROIDES -------------------------------------------------------------------------------------------------
  } else if ( estado.equals("FINAL02") ) {
    image(fondos[6], -50, 0, width+100, height);
    textAlign(CENTER, CENTER);
    
    textFont(fuenteTextos);
    textSize(48);
    fill(255);

    text("Los humanos ganan", width/2, height/6);
    
    rects(width/2, height/1.4, width/1.37, height/3.5, color(#D64118, 200));

    textSize(22);
    textLeading(width/30);
    text("Los humanos destruyeron a todos los androides del mundo y no volvieron a fabricarlos.", width/2, height/1.5, width/1.37, height/3.5);
    text("", 101, 325);

    textSize(15);
    text("presiona enter para continuar", width/2, height/1.25);



    //FINAL 03: ANDROIDES GANAN CON BOMBA -------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL03") ) {
    image(fondos[7], -50, 0, width+100, height);
    textAlign(CENTER, CENTER);
    textFont(fuenteTextos);
    textSize(48);
    
    fill(0);
    text("Los androides ganan", width/2, height/6);
    
    rects(width/2, height/1.4, width/1.37, height/2.7, color(230, 150));

    textSize(22);
    textLeading(width/35);
    text("Los androides detonaron una bomba que hizo que muchos humanos murieran. A pesar de que ganaron su libertad, la ciudad en la que vivían quedó inhabitable para los humanos por los excesivos niveles de radiación, por lo que declararon la guerra a los androides.", width/2, height/1.52, width/1.37, height/2.7);


    textSize(15);
    text("presiona enter para continuar", width/2, height/1.2);



    //ESCENA 4: Huir o esconderte --------------------------------------------------------------------------------------------
  } else if ( estado.equals("escena4") ) {
    image(fondos[8], -50, 0, width+100, height);
    textAlign(CENTER, CENTER);

    
    rects(width/2, height/5, width/1.37, height/3.7, color(#8E460E, 150));

    textFont(fuenteTextos);
    textSize(22);
    fill(255);
    textLeading(width/25);
    text("Los humanos están buscando androides para exterminarlos. \n \n ¿Qué crees que debes hacer?", width/2, height/5, width/1.5, height/3.7);
    
    //esconderte
    
    rects(width/2-200, height/1.5, width/3.5, height/6, color(#8E460E, 190));    
    textSize(25);
    text("Esconderte", width/2-200, height/1.52);

    //huir
    
    rects(width/2+200, height/1.5, width/3.5, height/6, color(#8E460E, 190));    
    text("Huir", width/2+200, height/1.52);




    //FINAL04: Humanos te encuentran y te destruyen ---------------------------------------------------------------------------
  } else if (estado.equals("FINAL04") ) {
    image(fondos[9], -50, 0, width+100, height);
    textAlign(CORNER, TOP);       
    
    rects(width/2-150, height/1.5, width/2, height/3.6, color(#E3E1E0, 180));

    textFont(fuenteTextos);
    textSize(25);
    fill(0);
    textLeading(width/30);
    text("Los humanos te encuentran y te destruyen.", width/2-145, height/1.4, width/2, height/3.6);
    

    textSize(15);
    text("Presiona enter para continuar", width/2-275, height/1.36);



    //ESCENA 7: A DÓNDE HUIR --------------------------------------------------------------------------------------------------------------
  } else if (estado.equals ("escena7") ) {
    image(fondos[10], -50, 0, width+100, height);
    
    rects(width/2-150, height/4, width/2.2, height/3.6, color(#3B2620, 200));

    textFont(fuenteTextos);
    textSize(27);
    fill(255);
    text("Has decidido huir, pero ¿A dónde?", width/2-150, height/4, width/2.2, height/3.6);
    
    //estación de tren
    textSize(25);
    rects(width/2-180, height/1.4, width/3, height/6, color(#3B2620, 200));
    text("Estación de tren", width/2-180, height/1.42);

    //aeropuerto
    rects(width/2+180, height/1.4, width/3, height/6, color(#3B2620, 200));
    text("Aeropuerto", width/2+180, height/1.42);


    //ESCENA 8: ESTACIÓN DE TREN: correr o mantener la calma  -------------------------------------------------------------------------------------------------------
  } else if (estado.equals("escena8") ) {
    image(fondos[11], -50, 0, width+100, height);
    
    rects(width/2, height/3.8, width/1.28, height/3.8, color(#EA4C34, 180));

    textFont(fuenteTextos);
    textSize(25);
    fill(255);
    textLeading(width/25);
    text("Cuando estás por subir al tren, unos guardias te detienen para hacer un control. ¿Qué hacer?", width/2, height/3.8, width/1.28, height/3.8);


    //correr
    rects(width/2-200, height/1.3, width/3.5, height/6, color(#EA4C34, 200));
    text("Correr", width/2-200, height/1.32);

    //mantener la calma
    rects(width/2+200, height/1.3, width/3.5, height/6, color(#EA4C34, 200));
    text("Mantener la calma", width/2+200, height/1.32, width/3.5, height/6);





    //FINAL 05: LOS GUARDIAS TE MATAN  ----------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL05") ) {
    image(fondos[12], -50, 0, width+100, height);
    
    rects(width/2, height/3.8, width/1.28, height/3.8, color(#AA230E, 180));

    textFont(fuenteTextos);
    textSize(30);
    fill(255);
    textLeading(width/25);
    text("Los guardias te disparan por la espalda y te destruyen.", width/2, height/4.3, width/1.28, height/3.8);
    
    textSize(15);
    text("Presiona enter para continuar", width/2, height/3);




    //FINAL 06: ESCAPAS EN TREN -----------------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL06") ) {
    image(fondos[13], -50, 0, width+100, height);
    
    rects(width/2, height/4, width/1.3, height/3.3, color(#E4D2F7, 200));

    textFont(fuenteTextos);
    textSize(23);
    fill(0);
    textLeading(width/30);
    text("Lograste engañar a los guardias, subir al tren y huir de los humanos, pero abandonaste a tu pueblo.", width/2, height/4.7, width/1.3, height/3.3);
    

    textSize(15);
    text("Presiona enter para continuar", width/2, height/3);



    //ESCENA 9: AEROPUERTO: Ir a la estación de tren o pasar desapercibido -----------------------------------------------------------------------------
  } else if (estado.equals("escena9") ) {
    image(fondos[14], -50, 0, width+100, height);
    
    rects(width/2, height/4, width/1.55, height/3.7, color(#919B57, 180));

    textFont(fuenteTextos);
    textSize(25);
    fill(255);
    textLeading(width/30);
    text("Ya en el aeropuerto, te encuentras con que hay demasiadas personas. \n \n ¿Qué crees que debes hacer?", width/2, height/4, width/1.6, height/3.7);

    //ir a la estación de tren
    rects(width/2-180, height/1.4, width/3.2, height/6, color(#919B57, 200));
    textSize(22);
    textLeading(width/30);
    text("Ir a la estación de tren", width/2-180, height/1.42, width/4, height/6);
    
    //tratar de pasar desapercibido
    textLeading(width/30);
    rects(width/2+180, height/1.4, width/3.2, height/6, color(#919B57, 200));
    text("Tratar de pasar desapercibido", width/2+180, height/1.42, width/3.2, height/6);



    //FINAL 07: ESCAPAS EN AVIÓN ------------------------------------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL07") ) {
    image(fondos[15], -50, 0, 900, height);
    
    rects(width/2, height/4, width/1.5, height/3.5, color(#3078B2, 150));


    textFont(fuenteTextos);
    textSize(23);
    fill(255);
    textLeading(width/30);
    text("Lograste subir al avión y escapar, pero abandonaste a tu pueblo.", width/2, height/5, width/1.6, height/3.3);

    textSize(15);
    text("Presiona enter para continuar", width/2, height/3);




    //CRÉDITOS  -------------------------------------------------------------------------------------------------------------------------
  } else if (estado.equals("créditos") ) {
    background(255);
    image(fondos[16], -70, 0, width/2, height);
    image(fondos[17], width/2 + 70, 0, width/2, height);

    textAlign(CENTER, BOTTOM);
    textFont(fuenteAndroide);
    textSize(30);
    fill(0);
    text("Revolucion Androide", posX, posY); 

    textFont(fuenteTextos);
    textSize(20);

    text("Realizado por Melisa Díaz", posX, posY+100);
    text("Universidad Nacional de La Plata", posX, posY+200);
    text("Facultad de Artes", posX, posY+230);
    text("Diseño Multimedial", posX, posY+260);
    text("Tecnología Multimedial 1", posX, posY+290);
    text("Trabajo Práctico 3", posX, posY+320);
    text("Comisión 2", posX, posY+350);
    text("Profesor Matias Jauregui Lorda", posX, posY+380);

    text("Basado en el juego", posX, posY+490);
    text("Detroit: Become Human", posX, posY+520);

    textSize(15);
    text("Presiona x para volver a empezar", posX, posY+680);



    posY = posY-1.5;
  }



  println(mouseX, mouseY);
  println("Estás en " + estado);
  if(now.isPlaying() ){
    println("Ahora sonando -NOW- ");
  }
}











void mousePressed() {
  //ESCENA 9: Ir a la estación de tren o  pasar desapercibido

  //ELECCIÓN: Tratar de pasar desapercibido
  if (estado.equals("escena9") && mouseX>455 && mouseY>375 && mouseX<705 && mouseY<475)
    estado = "FINAL07";


  //ESCENA 8: Correr o mantener la calma --------------------------------------------------

  //ELECCIÓN: Correr --> FINAL 5
  if (estado.equals("escena8") && mouseX>85 && mouseY>415 && mouseX<315 && mouseY<510)
    estado = "FINAL05";

  //ELECCIÓN: Mantener la calma --> FINAL 6
  if (estado.equals("escena8") && mouseX>485 && mouseY>415 && mouseX<715 && mouseY<510)
    estado = "FINAL06";



  //ESCENA 9: Ir a la estación de tren o  pasar desapercibido

  //ELECCIÓN: Ir a la estación de tren --> escena 8  
  if (estado.equals("escena9") && mouseX>95 && mouseY>375 && mouseX<345 && mouseY<475)
    estado = "escena8";



  //ESCENA 7: Ir a la estación de tren o al aeropuerto. ----------------------------------------------------

  //ELECCIÓN: Ir a la estación de tren --> Escena 8
  if (estado.equals("escena7") && mouseX>85 && mouseY>375 && mouseX<355 && mouseY<475)
    estado = "escena8";

  //ELECCIÓN: Ir al aeropuerto --> Escena 9
  if (estado.equals("escena7") && mouseX>445 && mouseY>375 && mouseX<715 && mouseY<475)
    estado = "escena9";



  //ESCENA 4: Huir o esconderse ------------------------------------------------------------

  //ELECCIÓN: Esconderse --> FINAL 4
  if (estado.equals("escena4") && mouseX>85 && mouseY>350 && mouseX<315 && mouseY<440)
    estado = "FINAL04";

  //ELECCIÓN: Huir --> escena 7
  if (estado.equals("escena4") && mouseX>485 && mouseY>350 && mouseX<715 && mouseY<440)
    estado = "escena7";

  //ESCENA 6: LUCHAR CON VIOLENCIA ----------------------------------------------------------

  //ELECCIÓN: Seguir luchando --> FINAL 2
  if (estado.equals("escena6") && mouseX>85 && mouseY>380 && mouseX<350 && mouseY<480)
    estado = "FINAL02";

  //ELECCIÓN: Detonar bomba en la ciudad --> FINAL 3
  if (estado.equals("escena6") && mouseX>445 && mouseY>380 &&  mouseX<715 && mouseY<480)
    estado = "FINAL03";



  //ESCENA 5: PROTESTAR PACÍFICAMENTE ---------------------------------------------------------


  //ELECCIÓN: Seguir protestando --> FINAL 1
  if (estado.equals("escena5") && mouseX>50 &&  mouseY>350 && mouseX<250 && mouseY<450)
    estado = "FINAL01";


  //ELECCIÓN: Rendirse --> FINAL 2
  if (estado.equals("escena5") && mouseX>300 &&  mouseY>350 && mouseX<500 && mouseY<450)
    estado = "FINAL02";


  //ELECCIÓN: Usar la violencia --> escena 6
  if (estado.equals("escena5") && mouseX>550 &&  mouseY>350 && mouseX<750 && mouseY<450)
    estado = "escena6";




  //ESCENA3: UNIRESE A LA REV: pacificamente o con violencia ------------------------------------------------------------ 

  //ELECCIÓN: Unirse a la rev pacíficamente --> escena 5
  if (estado.equals("escena3") && mouseX>60 &&  mouseY>410 && mouseX<330 && mouseY<510)
    estado = "escena5";

  //ELECCIÓN: Unirse a la rev usando violencia --> escena 6
  if (estado.equals("escena3") && mouseX>470 && mouseY>410 && mouseX<735 && mouseY<510)
    estado = "escena6";




  //ESCENA 2: Unirte a la rev o escapar -------------------------------------------------------------------

  //ELECCIÓN: Unirte a la revolución --> escena 3
  if (estado.equals("ESCENA2") && mouseX>50 &&  mouseY>325 && mouseX<315 && mouseY<420)
    estado = "escena3";

  //ELECCIÓN: escapar --> escena 4
  if (estado.equals("ESCENA2") && mouseX>480 && mouseY>325 && mouseX<745 && mouseY<420)
    estado = "escena4";
}





void keyPressed() {
  if (estado.equals("créditos") && key == 'x') {
    posY = height+50;
    estado = "inicio";
  }

  if ( estado.equals("FINAL01") || estado.equals("FINAL02") || estado.equals("FINAL03") || estado.equals("FINAL04") || estado.equals("FINAL05") || estado.equals("FINAL06") || estado.equals("FINAL07") && keyCode == ENTER){             
    estado = "créditos";
    now.pause();

  }

  if ( estado.equals("inicio") && key == ' '){
    estado = "ESCENA2";
    now.rewind();
    now.loop();
  }
  
}
