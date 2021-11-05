class pinocho {
  escenario escenario;

  // -----------------------------------------------------
  // PROPIEDADES > variables
  //variables para posicion, velocidad, tamanio y salto
  //variable para un array de image
  float posX, posY, posX1, posY1, salto;
  int mov;
  PImage[] pinocho = new PImage[3];
  int vidas;

  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  // inicializo variables definidas
  // Inicializo array array image
  pinocho(float x_, float y_, float x1_, float y1_) {
    //INICIALIZO MOVIMIENTO DE PINOCHO
    for (int i = 0; i < pinocho.length; i++) {
      pinocho[i] = loadImage("mov" + i + ".png");
    }

    posX = x_;
    posY = y_;
    posX1 = x1_;
    posY1 = y1_;
    vidas = 3;
  }

  // -----------------------------------------------------
  // METODOS > funciones

  void dibujar() {
    //FALTA CARGAR LAS IMAGES
    image(pinocho[mov], 30, posY-60, 120, 120);
    mov = (mov+1) % pinocho.length;
  }

  void reciclar() {
    mov = 0;
  }
  // --muestra sprite de pinocho


  //METODO keypressed para el movimiento
  void salto() {

    rect(posX, posY, posX1, posY1);

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
  
  int getvidas(){
    return vidas;
  }

  void colision(guardia gu) {

    float x_guard = gu.getX();
    float y_guard = gu.getY();

    float d_cuerpo = dist(x_guard, y_guard, posX, posY);

    if (d_cuerpo < 70) {
      fill(255, 0, 0);
      println("COLISION"+ posX, posY,vidas);
      vidas--;
      gu.reciclar();
    } else {
      fill(255);
    }
  }
  void perder(){
    
    if (vidas <= 0) {
      background(0);
      fill(255);
      textSize(60);
      textAlign(CENTER);
      text("GAME OVER", width/2, height/2);
    }
  }

}
