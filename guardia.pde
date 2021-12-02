class Guardia {
  Pantalla pantalla;
  Pinocho pinocho;
  // PROPIEDADES > variables
  //Variables velocidad, tamanio, posicion
  float posX, posY, posX1, posY1, vel;
  int c, ene, puntos;
  PImage[] enemigo = new PImage[10];

  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  // Inicializo variables
  Guardia(float x_, float y_, float x1_, float y1_) {
    //CARGA DE IMAGEN
    for (int i = 0; i < enemigo.length; i++) {
      enemigo[i] = loadImage("enemigo0" + i + ".png");
    }
    //INICIO DE VARIABLES
    posX = x_;
    posY = y_;
    posX1 = x1_;
    posY1 = y1_;
    vel = 8;
    puntos = 0;
  }

  // modificar tam de image
  // cambio de color guardia(random)

  // -----------------------------------------------------
  // METODOS > funciones
  void enemigo(Pantalla e) { //-------------------------IA ENEMIGO-------------------//
    String escena = e.getEstado();
    if ((escena.equals("juego"))) {

      image( enemigo[ene], posX, 400, 130, 200 );
      ene = (ene+1) % enemigo.length;

      for (int i = 1; i > c; i--) { //ACTUALIZAR
        posX = posX - vel - i;
      }
      if (posX <= -50) { //RECLICLAR
        reciclar();
        puntos += 10 ;
        println(puntos);
      }
    }
    if ((escena.equals("perder"))) {
      puntos = 0;
    }
    if ((escena.equals("ganar"))) {
      puntos = 0;
    }
  }

  void reciclar() {//-----------------------RECICLO POSUCION Y VELOCIDAD DE ENEMIGO-----------------//
    posX = random(900, 1200);
    vel = random(8, 30);
  }
  float getX() {
    return posX;
  }

  float getY() {
    return posY;
  }

  int getPo() {
    return puntos;
  }
}
