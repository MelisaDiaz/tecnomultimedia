class Aventura {  
  float posYcred;
  String estado;
  Textos textos;
  Nave nave;
  Pantallas pantalla;
  Juego juego;


  Aventura() {
    posYcred = height+100;
    imageMode ( CENTER );
    estado = "inicio";
    textos = new Textos();
    nave = new Nave();
    pantalla = new Pantallas();
    juego = new Juego();
    
    
  }

  void dibujarAventura() {
    println(estado);
    //------------------------------- INICIO
    if (estado.equals("inicio") ) {    
      pantalla.inicio();
      
    //------------------------------- PANTALLA DESPEGUE      
    } else if (estado.equals("despegue") ) {
      pantalla.despegue();
      nave.dibujarNave1();
      nave.despegar1();
      
    //-------------------------------  PANTALLA SISTEMA SOLAR      
    } else if ( estado.equals("sistema solar" ) ) {
      pantalla.sistemaSolar();
      
    //------------------------------- HISTORIA PLANETA JUPITER      
    } else if ( estado.equals("Jupiter" ) ) {
      pantalla.jupiter();
      nave.dibujarNave2();
      nave.despegar2();
      
    //------------------------------- HISTORIA PLANETA JUPITER - ATERRIZAR      
    } else if ( estado.equals( "aterrizar" ) ) {
      pantalla.aterrizar();
      
    //------------------------------- HISTORIA PLANETA JUPITER - CONOCER EXTRATERRESTRES      
    } else if ( estado.equals( "conocerextraterrestres" ) ) {
      pantalla.conocerExtraterrestres();
      
    //------------------------------- HISTORIA NUEVO PLANETA ENCONTRADO --------> PANTALLA GANAR JUEGO      
    } else if ( estado.equals("nuevoplaneta" ) ) {
      pantalla.nuevoPlaneta();
      
    //------------------------------- HISTORIA NAVE ROTA EN MARTE ------> PANTALLA PERDER JUEGO      
    } else if ( estado.equals( "naverota" ) ) {
      pantalla.naveRota();
      
    //------------------------------- CREDITOS      
    } else if ( estado.equals("creditos") ) {
      pantalla.creditos();
      juego.reiniciarTodo();
      
    //------------------------------- Jugar      
    } else if ( estado.equals("juego")) {
      juego.jugar();
      juego.empezar();
    }   
  }


  //----------------------------------------------------------------------------------- teclas y mouse

  void teclas() {
    juego.teclas();
    
    //CAMBIO de ESTADO: "CRÉDITOS" -> "INICIO"    
    if ( key == ENTER && estado.equals("creditos")) {
      estado = "inicio";
      nave.reiniciarNave();
      pantalla.resetCreditos();
      musicaDeFondo.loop();
    }

    //CAMBIO de ESTADO: "DESPEGUE" -> "SISTEMA SOLAR"
    if ( key == ' ' && estado.equals("despegue" ) ) {
      estado = "sistema solar";
    }  

    //CAMBIO de ESTADO: "ATERRIZAR" -> "HABLAR A LOS EXTRATERRESTRES"
    if ( key == 'c' && estado.equals( "aterrizar" )) {
      estado = "conocerextraterrestres";
    }

    if (key == BACKSPACE && estado.equals( "conocerextraterrestres")) {
      estado = "creditos";
    }
  }
   
   void cambiarEstado( String nuevoEstado ) {
    estado = nuevoEstado;
    }
  
  void clicMouse() {
    if (mousePressed) { 
      //CUANDO: hago clic sobre el el boton de iniciar
      if ( estado.equals( "inicio" ) && mouseX > (width*0.3737) && mouseX < (width*0.625) && mouseY > (height*0.88) && mouseY < (height*0.9516) ) {
        //INICIO AVENTURA: "despegue"
        estado = "despegue";
      }

      //CUANDO: hago clic sobre Marte
      if ( estado.equals( "sistema solar" ) && mouseX > (width*0.3587) && mouseX < (width*0.4287) && mouseY > (height*0.403) && mouseY < (height*0.57) ) {

        //CAMBIO de ESTADO: "sistema solar" -> "Marte"
        estado = "juego";
      }

      //CUANDO: hago clic sobre Jupiter
      if ( estado.equals( "sistema solar" ) && mouseX > (width*0.4712) && mouseX < (width*0.6712) && mouseY > (height*0.3184) && mouseY < (height*0.65) ) {
        //CAMBIO de ESTADO: "sistema solar" -> "Jupiter"
        estado = "Jupiter";
      }

      //CUANDO: hago clic sobre el planeta Jupiter para aterrizar
      if ( estado.equals( "Jupiter" ) && mouseX > (width*0.63) && mouseX < width && mouseY > (height*0.0166) && mouseY < (height*0.9834) ) {
        //CAMBIO de ESTADO: "sistema solar" -> "Jupiter"
        estado = "aterrizar";
      }
    }
  }
}
