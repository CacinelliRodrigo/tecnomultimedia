class escenario {
  guardia guardia;
  pinocho pinocho;
  // PROPIEDADES > variables
  //Variables velocidad, tamanio, posicion
  PImage[] escena = new PImage[4];
  PFont fuente;
  float posx, posy, puntaje;
  int mov, p = 0;
  String estado;

  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  escenario(float x_, float y_) {
    for (int i = 0; i < escena.length; i++) {
      escena[i] = loadImage("escena0" + i + ".png");
    }
    fuente = loadFont("letras.vlw");
    textFont(fuente);
    posx = x_;
    posy = y_;

    estado = "menu";
  }

  // -----------------------------------------------------
  // METODOS > funciones
  void dibujar() {
    image(escena[p], posx, 0);
  }
  void draw(guardia po, pinocho v) {
    int vidas = v.getvidas();
    int puntos = po.getPo();
    if (estado.equals("menu")) {
      p = 0;
      dibujar();
      textSize(20);
      strokeWeight(6);
      stroke(255, 243, 3);
      fill(0);
      rect(355, 225, 100, 50);
      fill(255);
      textAlign(CENTER);
      text("START", 405, 255);
    } else if (estado.equals("juego")) {
      p = 1;
      dibujar();
      textSize(40);
      fill(0);
      textAlign(CENTER);
      text("SCORE: "+ puntos , width/2, 40 );
      textAlign(LEFT);
      text("VIDAS: "+ vidas , 20, 40 );
    } else if (estado.equals("perder")) {
      p = 2;
      posx = 0;
      dibujar();
      fill(255);
      textSize(60);
      textAlign(CENTER);
      text("¡Fallaste! Pinocho fue arrestado", width/2, 60,400,400);

      pushStyle();
      stroke(0);
      textSize(20);
      fill(234, 212, 43);
      rect(650, 400, 130, 80);
      textAlign(CENTER);
      fill(0);
      text("REINICIAR", 710, 445);
      popStyle();
      
    } else if (estado.equals("ganar")) {
      p = 3;
      posx = 0;
      dibujar();
      fill(255);
      textSize(60);
      textAlign(LEFT);
      text("¡Lo lograste! Pinocho llego sano y salvo a casa", width/2,20,400, 400);
      
      stroke(0);
      textSize(20);
      fill(234, 212, 43);
      rect(650, 400, 130, 80);
      textAlign(CENTER);
      fill(0);
      text("INICIO", 710, 445);
    }
  }
  void actualizar() {
    if (posx < -1600) {
      reciclar();
    }
    if(estado.equals("juego")){
      posx-=5;
    }
  }
  void reciclar() {
    posx = 0;
  }
  void click(escenario e) {
    if (p == 0) {
      if (mouseX > 355 && mouseX < 455 && mouseY > 230 && mouseY < 305) {
        e.cambiarEstado("juego");
      }
    } else if (p == 2) {
      if (mouseX > 650 && mouseX < 780 && mouseY > 400 && mouseY < 480) {
        e.cambiarEstado("menu");
        
      }
    } else if (p == 3) {
      if (mouseX > 650 && mouseX < 780 && mouseY > 400 && mouseY < 480) {
        e.cambiarEstado("menu");
      }
    }
  }
  float getEscena() {
    return p;
  }
  void cambiarEstado( String nuevoEstado ) {
    estado = nuevoEstado;
  }
  String getestado() {
    return estado;
  }
}
