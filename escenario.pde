class Escenario {
  Boton bot;
  Pantalla pant;
  // PROPIEDADES > variables
  //Variables velocidad, tamanio, posicion
  PImage[] escena = new PImage[4];
  PFont fuente;
  float posx, posy;
  int mov;

  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  Escenario(float x_, float y_) {
    bot = new Boton();
    for (int i = 0; i < escena.length; i++) {
      escena[i] = loadImage("escena0" + i + ".png");
    }
    posx = x_;
    posy = y_;
  }

  // -----------------------------------------------------
  // METODOS > funciones
  void draw(Guardia po, Pinocho v, Pantalla a) {
    String e = a.getEstado();
    float p = a.getEscena();
    int vidas = v.getVidas();
    int puntos = po.getPo();
    
      if (p == 10) {

      if (e.equals("inicio")) {
        image(escena[0], posx, 0);
        bot.b(350, 240, 100, 50, 29);
      }
      if (e.equals("juego")) {
        image(escena[1], posx, 0);
        bot.texto(40, 0, 0, 0, 0);
        text("SCORE: "+ puntos, width/2, 40 );
        textAlign(LEFT);
        text("VIDAS: "+ vidas, 20, 40 );
      }
      if (e.equals("perder")) {
        image(escena[2], posx, posy);
        bot.texto(60, 255, 350, 80, 42);
        bot.b(520, 240, 130, 50, 25);
      }
      if (e.equals("ganar")) {
        image(escena[3], posx, posy);
        bot.texto(60, 255, 300, 20, 43);
        bot.b(490, 240, 100, 50, 25);
      }
    }//------------VIDEOJUEGO------------//
  }
  void actualizar(Pantalla e) {//---------------------------RECLICLA FONDO DE VIDEOJUEGO-------------------------------//
    String estado = e.getEstado();
    if (posx < -1600) {
      reciclar();
    }
    if (estado.equals("juego")) {
      posx-=5; //-----VELOCIDAD DE IMAGEN
    }
    if (estado.equals("perder")) {
      reciclar();
    }
    if (estado.equals("ganar")) {
      reciclar();
    }
  }
  void condicion(Pinocho v, Guardia e, Pantalla a) { //-----------------CONDICION GANAR - PERDER-------------------//
    int puntos = e.getPo();
    int vidas = v.getVidas();

    if (puntos == 60) { //---CONDICION PARA GANAR-----//
      a.cambiarEstado("ganar");
    }
    if (vidas == 0) {//---CONDICION PERDER----//
      a.cambiarEstado("perder");
    }
  }
  void reciclar() {
    posx = 0;
  }
  void click(Pantalla e) {
    if (e.estado.equals("inicio")) {
      e.b_accion(350, 450, 240, 290, 10, "juego");
      
    } else if (e.estado.equals("ganar")) {
      
      e.b_accion(490, 590, 240, 290, 12, "aventura");
      
    } else if (e.estado.equals("perder")) {
      e.b_accion(520, 650, 240, 290, 8, "aventura");
    }
  }
}
