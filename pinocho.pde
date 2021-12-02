class Pinocho {
  Pantalla pantalla;
  Pinocho jugador;
  // -----------------------------------------------------
  // PROPIEDADES > variables
  //variables para posicion, velocidad, tamanio y salto
  //variable para un array de image
  float posX, posY, posX1, posY1, salto;
  int mov, c, vidas;
  PImage[] pinocho = new PImage[12];

  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  // inicializo variables definidas
  // Inicializo array array image
  Pinocho(float x_, float y_, float x1_, float y1_) {
    //INICIALIZO MOVIMIENTO DE PINOCHO
    for (int i = 0; i < pinocho.length; i++) {
      pinocho[i] = loadImage("mb0" + i + ".png");
    }

    posX = x_;
    posY = y_;
    posX1 = x1_;
    posY1 = y1_;
    vidas = 3;
  }

  // -----------------------------------------------------
  // METODOS > funciones
  void reciclar() {
    mov = 0;
    vidas = 3;
  }
  //METODO keypressed para el movimiento
  void jugador(Pantalla e) {
    String escena = e.getEstado();
    if (escena.equals("juego")) {


      image( pinocho[c], posX, posY, posX1, posY1 );
      c = (c+1) % pinocho.length;

      posY = posY + salto; //POSICION VERTICAL + VELOCIDAD

      salto = salto + 0.8; //VELOCIDAD DE GRAVEDAD

      //Toca fondo de pantalla y se queda en el lugar
      if (posY > height - posY1) {
        posY = height - posY1;
      }
      //SALTA CUANDO PINOCHO ESTA EN POSICION ESTATICA
      if (posY == height - posY1 && keyPressed) {
        if (key == CODED) {
          if (keyCode == UP) {
            salto = -20;
          }
        }
      }
    }
  }

  void colision(Guardia gu, Pantalla e) {

    String escena = e.getEstado();
    float x_guard = gu.getX();
    float y_guard = gu.getY();
    float d_cuerpo = dist(x_guard, y_guard, posX, posY);

    if ((escena.equals("juego"))) {
      if (d_cuerpo < 70) {
        println("COLISION "+ vidas);
        vidas--;
        gu.reciclar();
      }
    }
    if ((escena.equals("perder"))) {
      reciclar();
    } else if ((escena.equals("ganar"))) {
      reciclar();
    }
  }
  int getVidas() {
    return vidas;
  }
}
