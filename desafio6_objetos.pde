PImage mzna;

Manzana a;

void setup() {
  size(600, 600); 
  mzna = loadImage("manzana.png");

  //inicializar el objeto
  a = new Manzana(width/3, height/6, 100, 100);
}

void draw() {
  background(#DEFCC9);

  //llamo a los métodos(las funciones) del objeto
  a.dibujar();
  //a.mover();
  a.caer();
}






class Manzana {

  //Campos (variables, propiedades del objeto)
  float x, y, t1, t2;


  //Constructor(setup del objeto, asigna variables?)
  Manzana( float posX, float posY, float tamX, float tamY) {
    x  = posX;
    y  = posY;
    t1 = tamX;
    t2 = tamY;
  }


  void dibujar() {
    pushStyle();
    image(mzna, x, y, t1, t2);
    popStyle();
  }



  void caer() {

      if (mouseButton == LEFT) {
        y += 2;
      }
      if (mouseButton == RIGHT) {
        y = mouseY;
        x = mouseX;
      }
    }
  }
