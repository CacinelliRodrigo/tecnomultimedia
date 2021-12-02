class Boton {
  //PROPIEDADES
  String[] t;
  PFont fuente;
  //----------------------------------------------
  //CONSTRUCTOR
  Boton() {
    t = loadStrings("list.txt");
    fuente = loadFont("letras1.vlw");
    textFont(fuente);
  }
  //----------------------------------------------
  //METODOS
  void b(int x, int y, int x_, int y_, int lin) {
    //BOTON
    pushStyle();
    textSize(20);
    fill(234, 212, 43);
    strokeWeight(5);
    rect(x, y, x_, y_);
    textAlign(LEFT);
    fill(0);
    textSize(17);
    text(t[lin], x + 10, y + 30);
    popStyle();
  }
  void ct(int lin) {
    pushStyle();
    //FONDO DE TEXTO
    strokeWeight(10);
    stroke(0);
    fill(240, 245, 12);
    rect(5, 450, 790, 145);
    popStyle();

    //TEXTO
    fill(0);
    textSize(20);
    textAlign(LEFT);
    text(t[lin], 30, 475, 600, 400);
  }
  void op(int x, int y, int op) {
    textAlign(LEFT);
    fill(0);
    textSize(17);
    text(t[op], x+10, y+30);
  }
  void texto(int x, int y, int x1, int y1, int p) {
    textSize(x);
    textAlign(CENTER);
    fill(y);
    text(t[p], x1, y1, 500, 500);
  }
}
