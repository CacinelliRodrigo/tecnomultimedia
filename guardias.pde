class guardia {

  // PROPIEDADES > variables
  //Variables velocidad, tamanio, posicion
  float posX, posY, posX1, posY1, vel;
  int c;

  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  // Inicializo variables
  guardia(float x_, float y_, float x1_, float y1_) {
    //CARGA DE IMAGEN

    //INICIO DE VARIABLES
    posX = x_;
    posY = y_;
    posX1 = x1_;
    posY1 = y1_;
    vel = 3;
  }

  // modificar tam de image
  // cambio de color guardia(random)

  // -----------------------------------------------------
  // METODOS > funciones
  void dibujar() {
    //FALTA CARGAR LAS IMAGES
    //image(guardia[mov], posX, posY);
    rect(posX, posY, posX1, posY1);
  }

  void actualizar() {
    for (int i = 1; i > c; i--) { //ACTUALIZAR
      posX = posX - vel - i;
    }
    if (posX <= -50) { //RECLICLAR
      reciclar();
    }
  }
  // --mueve los guardias y llama a reciclar

  void reciclar() {
    //RECLICLAR
    posX = random(900, 1200);
    vel = random(6, 20);

    // --recicla propiedades de guardia una vez llegue al final de la pantalla(valor inicial)

    // color(PImage)
    // cambia el color cada vez que se actialice
  }

  float getX() {
    return posX;
  }

  float getY() {
    return posY;
  }
}
