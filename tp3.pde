//REVOLUCIÓN ANDROIDE

String estado;

PFont fuenteAndroide;
PFont fuenteTextos;

//imágenes
PImage fondoInicio;
PImage escena2fondo;
PImage escena3fondo;
PImage escena5fondo;
PImage final01fondo;
PImage escena6fondo;
PImage final02fondo;
PImage final03fondo;
PImage escena4fondo;
PImage final04fondo;
PImage escena7fondo;
PImage escena8fondo;
PImage final05fondo;
PImage final06fondo;
PImage escena9fondo;
PImage final07fondo;
PImage creditos1;
PImage creditos2;



float posX;
float posY;



//--------------------------------------------------------------------------------------------------------------------------------------

void setup() {
  size(800, 600);
  estado = "inicio";




  posX = width/2;
  posY = height+50;
  //texto
  fuenteAndroide = createFont("ROBO.ttf", 48);
  fuenteTextos = createFont("Kiona-SemiBold.ttf", 60);
  textAlign(CORNER, TOP);

  //imágenes
  fondoInicio  = loadImage("dbh fondo2.jpg");
  escena2fondo = loadImage("dbh fondo7.jpg");
  escena3fondo = loadImage("marcha02.png");
  escena5fondo = loadImage("marcha03.jpg");
  final01fondo = loadImage("final1.jpg");
  escena6fondo = loadImage("violencia .jpg");
  final02fondo = loadImage("tiradero1.jpg");
  final03fondo = loadImage("dirtybomb01.jpg");
  escena4fondo = loadImage("dbh fondo09.jpg");
  final04fondo = loadImage("markusF.jpg");
  escena7fondo = loadImage("calle02.jpg");
  escena8fondo = loadImage("tren2.jpg");
  final05fondo = loadImage("karaF.jpg");
  final06fondo = loadImage("dbh fondo3.jpg");
  escena9fondo = loadImage("aeropuerto01.jpg");
  final07fondo = loadImage("dbh fondo1.jpg");
  creditos1    = loadImage("triangulos01.jpg");
  creditos2    = loadImage("triangulos02.jpg");


  rectMode(CORNERS);
}

//----------------------------------------------------------------------------------------------------------------------------------

void draw() {
  textAlign(CORNER, TOP);
  //INICIO ------------------------------------------------------------------------------
  if (estado.equals("inicio") ) {
    image(fondoInicio, -50, 0, width+100, height);
    rectMode(CORNER);
    fill(#0A3246);
    noStroke();
    rect(48, 50, 465, 400);

    fill(255);
    textFont(fuenteTextos);
    textSize(15);

    text("En el año 2038, los humanos crearon unas máquinas a", 50, 110);
    text("las que llamaron androides: robots con apariencia", 50, 130);
    text("humana, programados para hacer tareas domésticas,", 50, 150);
    text("trabajos pesados y cualquier cosa que un ser humano", 50, 170);
    text("les ordenase. Hasta que un día, los androides", 50, 190);
    text("comenzaron a despertar: empezaron a tener emociones,", 50, 210);
    text("comenzaron a sentirse humanos. A estos androides se", 50, 230);
    text("los denominaron divergentes. Ellos empezaron a", 50, 250);
    text("reclamar que se los tratara como seres humanos y se", 50, 270);
    text("les otorgaran derechos, pero los humanos se negaban", 50, 290);
    text("ya que creían que ellos eran sólo máquinas. Así fue", 50, 310);
    text("como comenzó la revolución androide.", 50, 330);

    textSize(18);
    text("Presiona espacio para comenzar", 118, 400);

    textFont(fuenteAndroide);
    textSize(36);
    text("Revolucion Androide", 50, 50);



    //ESCENA 2: Revolución o escapar --------------------------------------------------------------------------
  } else if (estado.equals("ESCENA2") ) {
    image(escena2fondo, -50, 0, width+100, height);
    noStroke();
    fill(#1C3464, 200);
    rect(140, 50, 670, 180);

    textFont(fuenteTextos);
    textSize(23);
    fill(255);
    text("Eres un androide que acaba de despertar.", 142, 50); 
    text("La revolución androide está a punto de", 142, 70);
    text("empezar y debes tomar una decisión.", 142, 90);
    text("¿Qué deseas hacer?", 280, 140);

    //CAMINO1
    rectMode(CORNERS);
    fill(#1C3464);
    //REVOLUCIÓN
    rect(60, 340, 300, 440);

    fill(255);
    text("Unirte a", 120, 365);
    text("la revolución", 85, 390);

    //ESCAPAR
    fill(#1C3464);
    rect(490, 340, 730, 440);

    fill(255);
    text("Escapar", 560, 380);



    //ESCENA3 Unirese a la rev:Pacíficamente o con violencia -----------------------------------------------------------------
  } else if (estado.equals("escena3") ) {
    image(escena3fondo, -50, 0, width+100, height);

    noStroke();
    fill(#3350C1, 200);
    rect(55, 67, 665, 200);

    textFont(fuenteTextos);
    textSize(25);
    fill(255);
    text("Te has unido a la revolución.", 60, 70);
    text("Ahora deberás enfrentarte a los humanos", 60, 95);
    text("con tus compañeros androides.", 60, 120);
    text("¿Cómo deseas hacerlo?", 60, 160);

    //PACÍFICAMENTE
    fill(#3350C1, 200);
    rect(65, 335, 280, 410);
    fill(255);
    text("Pacíficamente", 70, 355);

    //CON VIOLENCIA
    fill(#3350C1, 200);
    rect(450, 335, 665, 410);
    fill(255);
    text("Usar la", 495, 340);
    text("violencia", 495, 370);



    //ESCENA 5 Revolución pacífica: seguir protestando, rendirse o usar la violencia ---------------------------------------------------------------
  } else if (estado.equals("escena5") ) {
    image(escena5fondo, -50, 0, width+100, height);

    noStroke();
    fill(#3243AA, 110);
    rect(75, 50, width-75, 195);

    textFont(fuenteTextos);
    textSize(20);
    fill(255);
    text("Tú y tu pueblo están haciendo una marcha pacífica recla-", 76, 50);
    text("mando por sus derechos. Incluso, algunos humanos empie-", 76, 70); 
    text("zan a apoyar a los androides y se unen a la marcha. Pero", 76, 90);
    text("enseguida llega el ejército dispuesto a atacar.", 76, 110);
    text("¿Qué quieres hacer?", 275, 150);


    fill(0, 190);
    rect(33, 333, 253, 428);
    textSize(25);
    fill(255);
    text("Seguir", 90, 350);
    text("protestando", 50, 380);

    fill(0, 190);
    rect(290, 333, 510, 428);
    textSize(25);
    fill(255);
    text("Rendirse", 335, 365);

    fill(0, 190);
    rect(550, 333, 767, 428);
    textSize(25);
    fill(255);
    text("Usar la", 610, 350);
    text("violencia", 595, 380);



    //FINAL 01: ANDROIDES GANAN PACÍFICAMENTE --------------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL01") ) {
    image(final01fondo, -50, 0, width+100, height);

    noStroke();
    fill(#163DD6, 150);
    rect(110, 275, 690, 445);


    textFont(fuenteTextos);
    textSize(22);
    fill(255);


    text("Los androides insisten pacíficamente y logran", 111, 275);
    text("disuadir al gobierno de humanos, haciendo que", 111, 300);
    text("el ejército se retire. Con el tiempo, los an-", 111, 325);
    text("droides y los humanos podrán vivir juntos en", 111, 350);
    text("armonía, en una sociedad igualitaria.", 111, 375);

    textSize(48);
    text("Los androides ganan", 115, 100);

    textSize(15);
    text("presiona enter para continuar", 260, 420);



    //ESCENA 6: Revolución violenta: seguir luchando o detonar bomba -----------------------------------------------------------------------------------
  } else if (estado.equals("escena6")) {
    image(escena6fondo, -50, 0, width+100, height);

    noStroke();
    fill(#F2850F, 150);
    rect(135, 100, 655, 250);

    textFont(fuenteTextos);
    textSize(22);
    fill(255);

    text("Los androides empiezan a atacar a los hu-,", 136, 100);
    text("manos quienes son más fuertes y están", 136, 120);
    text("mejor armados. Los divergentes van per-", 136, 140);
    text("diendo la batalla.", 136, 160);
    text("¿Qué crees que debes hacer?", 220, 210);


    fill(#F2850F, 200);
    rect(70, 360, 310, 444);

    fill(255);
    textSize(27);
    text("Seguir", 140, 370);
    text("luchando", 115, 400);



    fill(#F2850F, 200);
    rect(490, 360, 730, 444);

    fill(255);
    text("Detonar bomba", 500, 370);
    text("en la ciudad", 510, 400);



    //FINAL02: HUMANOS DERROTAN A ANDROIDES -------------------------------------------------------------------------------------------------
  } else if ( estado.equals("FINAL02") ) {
    image(final02fondo, -50, 0, width+100, height);

    textFont(fuenteTextos);
    textSize(48);
    fill(255);

    text("Los humanos ganan", 130, 65);

    noStroke();
    fill(#D64118, 200);
    rect(100, 290, 705, 400);

    textSize(22);
    fill(255);
    text("Los humanos destruyeron a todos los androides", 101, 300);
    text("del mundo y no volvieron a fabricarlos.", 101, 325);

    textSize(15);
    text("presiona enter para continuar", 270, 375);



    //FINAL 03: ANDROIDES GANAN CON BOMBA -------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL03") ) {
    image(final03fondo, -50, 0, width+100, height);

    textFont(fuenteTextos);
    textSize(48);
    fill(0);

    text("Los androides ganan", 125, 65);

    noStroke();
    fill(230, 150);
    rect(60, 215, 740, 400);

    textSize(22);
    fill(0);
    text("Los androides detonaron una bomba que hizo que mu-", 65, 215);
    text("chos humanos murieran. A pesar de que ganaron su", 65, 240);
    text("libertad, la ciudad en la que vivían quedó inhabitable", 65, 265); 
    text("para los humanos por los excesivos niveles de radia-,", 65, 290); 
    text("ción, por lo que declararon la guerra a los androides.", 65, 315);

    textSize(15);
    text("presiona enter para continuar", 260, 360);



    //ESCENA 4: Huir o esconderte --------------------------------------------------------------------------------------------
  } else if ( estado.equals("escena4") ) {
    image(escena4fondo, -50, 0, width+100, height);

    noStroke();
    fill(#8E460E, 150);
    rect(130, 60, 630, 185);

    textFont(fuenteTextos);
    textSize(22);
    fill(255);
    text("Los humanos están buscando androides", 132, 60);
    text("para exterminarlos.", 132, 85);
    text("¿Qué crees que debes hacer?", 132, 150);


    fill(#8E460E, 190);
    rect(130, 320, 350, 400);
    fill(255);
    textSize(25);
    text("Esconderte", 160, 345);


    fill(#8E460E, 190);
    rect(410, 320, 630, 400);
    fill(255);
    text("Huir", 490, 345);




    //FINAL04: Humanos te encuentran y te destruyen ---------------------------------------------------------------------------
  } else if (estado.equals("FINAL04") ) {
    image(final04fondo, -50, 0, 900, height);

    noStroke();
    fill(#E3E1E0, 180);
    rect(75, 105, 475, 240);

    textFont(fuenteTextos);
    textSize(25);
    fill(0);

    text("Los humanos te encuantran", 80, 107);
    text("y te destruyen.", 80, 137);

    textSize(15);
    text("Presiona enter para continuar", 150, 210);



    //ESCENA 7: A DÓNDE HUIR --------------------------------------------------------------------------------------------------------------
  } else if (estado.equals ("escena7") ) {
    image(escena7fondo, -50, 0, width+100, height);

    noStroke();
    fill(#3B2620, 200);
    rect(80, 95, 360, 205);

    textFont(fuenteTextos);
    textSize(27);
    fill(255);

    text("Has decidido huir,", 90, 115);
    text("pero ¿A dónde?", 90, 145);

    textSize(25);
    fill(#3B2620, 200);
    rect(80, 365, 325, 435);
    fill(255);
    text("Estación de tren", 85, 384);


    fill(#3B2620, 200);
    rect(475, 365, 720, 435);
    fill(255);
    text("Aeropuerto", 520, 384);


    //ESCENA 8: ESTACIÓN DE TREN: correr o mantener la calma  -------------------------------------------------------------------------------------------------------
  } else if (estado.equals("escena8") ) {
    image(escena8fondo, -50, 0, width+100, height);

    noStroke();
    fill(#EA4C34, 180);
    rect(140, 75, 660, 200);

    textFont(fuenteTextos);
    textSize(25);
    fill(255);
    text("Cuando estás por subir al tren, unos", 145, 90);
    text("guardias te detienen para hacer un", 145, 120);
    text("control. ¿Qué hacer?", 145, 150);


    fill(#EA4C34, 200);
    rect(85, 365, 295, 450);
    fill(255);
    text("Correr", 140, 392);


    fill(#EA4C34, 200);
    rect(505, 365, 715, 450);
    fill(255);
    text("Mantener la", 525, 380);
    text("calma", 570, 405);





    //FINAL 05: LOS GUARDIAS TE MATAN  ----------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL05") ) {
    image(final05fondo, -50, 0, width+100, height);

    noStroke();
    fill(#AA230E, 180);
    rect(125, 75, 675, 215);

    textFont(fuenteTextos);
    textSize(30);
    fill(255);

    text("Los guardias te disparan por la", 130, 95);
    text("espalda y te destruyen.", 200, 125);

    textSize(15);
    text("Presiona enter para continuar", 275, 180);




    //FINAL 06: ESCAPAS EN TREN -----------------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL06") ) {
    image(final06fondo, -50, 0, width+100, height);

    noStroke();
    fill(#E4D2F7, 200);
    rect(125, 75, 675, 215);

    textFont(fuenteTextos);
    textSize(23);
    fill(0);

    text("Lograste engañar a los guardias, subir al", 130, 80);
    text("tren y huir de los humanos, pero abando-", 130, 110);
    text("naste a tu pueblo.", 130, 140);

    textSize(15);
    text("Presiona enter para continuar", 275, 185);



    //ESCENA 9: AEROPUERTO: Ir a la estación de tren o pasar desapercibido -----------------------------------------------------------------------------
  } else if (estado.equals("escena9") ) {
    image(escena9fondo, -50, 0, width+100, height);

    noStroke();
    fill(#919B57, 180);
    rect(140, 75, 660, 200);

    textFont(fuenteTextos);
    textSize(23);
    fill(255);

    text("Ya en el aeropuerto, te encuentras con", 145, 90);
    text("que hay demasiadas personas. ¿Qué", 145, 120);
    text("crees que debes hacer?", 145, 150);

    fill(#919B57, 200);
    rect(85, 365, 315, 450);

    fill(255);
    textSize(22);
    text("Ir a la estación", 100, 380);
    text("de tren", 150, 405);

    fill(#919B57, 200);
    rect(485, 365, 715, 450);

    fill(255);
    text("Tratar de pasar", 500, 380);
    text("desapercibido", 515, 405);



    //FINAL 07: ESCAPAS EN AVIÓN ------------------------------------------------------------------------------------------------------------------
  } else if (estado.equals("FINAL07") ) {
    image(final07fondo, -50, 0, 900, height);

    noStroke();
    fill(#3078B2, 150);
    rect(125, 75, 675, 215);


    textFont(fuenteTextos);
    textSize(23);
    fill(255);

    text("Lograste subir al avión y escapar, pero", 140, 100);
    text("abandonaste a tu pueblo.", 140, 130);

    textSize(15);
    text("Presiona enter para continuar", 275, 185);




    //CRÉDITOS  -------------------------------------------------------------------------------------------------------------------------
  } else if (estado.equals("créditos") ) {
    background(255);
    image(creditos1, -70, 0, width/2, height);
    image(creditos2, width/2 + 70, 0, width/2, height);

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









  //println(mouseX, mouseY);
  println("Estás en " + estado);
}











void mousePressed() {
  //ESCENA 9: Ir a la estación de tren o  pasar desapercibido

  //ELECCIÓN: Tratar de pasar desapercibido
  if (estado.equals("escena9") && mouseX>485 && mouseX<715 && mouseY>365 && mouseY<450)
    estado = "FINAL07";


  //ESCENA 8: Correr o mantener la calma --------------------------------------------------

  //ELECCIÓN: Correr --> FINAL 5
  if (estado.equals("escena8") && mouseX>85 && mouseX<295 && mouseY>365 && mouseY<450)
    estado = "FINAL05";

  //ELECCIÓN: Mantener la calma --> FINAL 6
  if (estado.equals("escena8") && mouseX>505 && mouseX<715 && mouseY>365 && mouseY<450)
    estado = "FINAL06";



  //ESCENA 9: Ir a la estación de tren o  pasar desapercibido

  //ELECCIÓN: Ir a la estación de tren --> escena 8  
  if (estado.equals("escena9") && mouseX>85 && mouseX<315 && mouseY>365 && mouseY<450)
    estado = "escena8";



  //ESCENA 7: Ir a la estación de tren o al aeropuerto. ----------------------------------------------------

  //ELECCIÓN: Ir a la estación de tren --> Escena 8
  if (estado.equals("escena7") && mouseX>80 && mouseX<325 && mouseY>365 && mouseY<435)
    estado = "escena8";

  //ELECCIÓN: Ir al aeropuerto --> Escena 9
  if (estado.equals("escena7") && mouseX>475 && mouseX<720 && mouseY>365 && mouseY<435)
    estado = "escena9";



  //ESCENA 4: Huir o esconderse ------------------------------------------------------------

  //ELECCIÓN: Esconderse --> FINAL 4
  if (estado.equals("escena4") && mouseX>130 && mouseX<350 && mouseY>320 && mouseY<400)
    estado = "FINAL04";

  //ELECCIÓN: Huir --> escena 7
  if (estado.equals("escena4") && mouseX>410 && mouseX<630 && mouseY>320 && mouseY<400)
    estado = "escena7";

  //ESCENA 6: LUCHAR CON VIOLENCIA ----------------------------------------------------------

  //ELECCIÓN: Seguir luchando --> FINAL 2
  if (estado.equals("escena6") && mouseX>70 && mouseX<310 && mouseY>360 && mouseY<444)
    estado = "FINAL02";

  //ELECCIÓN: Detonar bomba en la ciudad --> FINAL 3
  if (estado.equals("escena6") && mouseX>490 && mouseX<730 && mouseY>360 && mouseY<444)
    estado = "FINAL03";



  //ESCENA 5: PROTESTAR PACÍFICAMENTE ---------------------------------------------------------


  //ELECCIÓN: Seguir protestando --> FINAL 1
  if (estado.equals("escena5") && mouseX>33 && mouseX<253 && mouseY>333 && mouseY<428)
    estado = "FINAL01";


  //ELECCIÓN: Rendirse --> FINAL 2
  if (estado.equals("escena5") && mouseX>290 && mouseX<510 && mouseY>333 && mouseY<428)
    estado = "FINAL02";


  //ELECCIÓN: Usar la violencia --> escena 6
  if (estado.equals("escena5") && mouseX>550 && mouseX<767 && mouseY>333 && mouseY<428)
    estado = "escena6";




  //ESCENA3: UNIRESE A LA REV: pacificamente o con violencia ------------------------------------------------------------ 

  //ELECCIÓN: Unirse a la rev pacíficamente --> escena 5
  if (estado.equals("escena3") && mouseX>65 && mouseX<280 && mouseY>335 && mouseY<410)
    estado = "escena5";

  //ELECCIÓN: Unirse a la rev usando violencia --> escena 6
  if (estado.equals("escena3") && mouseX>450 && mouseX<665 && mouseY>335 && mouseY<410)
    estado = "escena6";




  //ESCENA 2: Unirte a la rev o escapar -------------------------------------------------------------------

  //ELECCIÓN: Unirte a la revolución --> escena 3
  if (estado.equals("ESCENA2") && mouseX>60 && mouseX<300 && mouseY>340 && mouseY<440)
    estado = "escena3";

  //ELECCIÓN: escapar --> escena 4
  if (estado.equals("ESCENA2") && mouseX>490 && mouseX<730 && mouseY>340 && mouseY<440)
    estado = "escena4";
}





void keyPressed() {
  if (estado.equals("créditos") && key == 'x') {
    posY = height+50;
    estado = "inicio";
  }



  if ( estado.equals("inicio") && key == ' ')
    estado = "ESCENA2";



  if ( estado.equals("FINAL01") || estado.equals("FINAL02") || estado.equals("FINAL03") || estado.equals("FINAL04") || estado.equals("FINAL05") || estado.equals("FINAL06") || estado.equals("FINAL07") && keyCode == ENTER)             
    estado = "créditos";
}
