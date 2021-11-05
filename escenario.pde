class escenario {

  // PROPIEDADES > variables
  //Variables velocidad, tamanio, posicion
  PImage escena;
  float posx, posy, tam, tam1, vel;
  int mov;

  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  escenario(float x_, float y_) {
    escena = loadImage("escenario.png");
    posx = x_;
    posy = y_;
  }

  // -----------------------------------------------------
  // METODOS > funciones
  void dibujar() {
    image(escena, posx, posy);
  }

  void actualizar() {
    posx-=5;
    if (posx < -900) {
      reciclar();
    }
  }
  void reciclar() {
    posx = 0;
  }

}
