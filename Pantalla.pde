class Pantalla {
  //PROPIEDADES
  Boton bot;
  Guardia guardia;
  Pinocho pinocho;
  PImage[] e = new PImage[29];
  float posx, posy, mov;
  String estado;
  int p;
  //-------------------------------------------------------------//
  //CONSTRUCTOR
  Pantalla(float x_, float y_) {
    bot = new Boton();
    pinocho = new Pinocho(0, 0, 0, 0);
    for (int i = 0; i < e.length; i++) {
      e[i] = loadImage("pantalla" + i + ".png");
    }
    posx = x_;
    posy = y_;
    estado = "menu";
    mov = 600;
    p = 0;
  }
  //-------------------------------------------------------------//
  //METODOS
  void escena() {
    if (estado.equals("menu")) {
      image(e[p], posx, posy);
      //START
      bot.b(350, 240, 100, 50, 29);
      //CREDITOS
      bot.b(335, 310, 130, 50, 27);
    }
    if (estado.equals("aventura")) {
      if (p == 1) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 2) {
        mostrar(10, 10, 110, 50, 0, p, 31);
        bot.b(10, 80, 110, 50, 32);
      } else if (p == 3) {
        mostrar(650, 540, 135, 40, 26, p, 0);
      } else if (p == 4) {
        mostrar(10, 10, 110, 50, 0, p, 33);
        bot.b(10, 80, 110, 50, 34);
      } else if (p == 5) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 6) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 7) {
        mostrar(10, 10, 110, 50, 0, p, 35);
        bot.b(10, 80, 110, 50, 36);
      } else if (p == 8) {
        mostrar(650, 540, 135, 40, 26, p, 0);
      } else if (p == 9) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } //--------------------------------(SALTO AL VIDEOJUEGO)---------------------------------------------//
      else if (p == 11) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 12) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 13) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 14) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 15) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 16) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 17) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 18) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 19) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 20) {
        mostrar(700, 20, 80, 40, 25, p, 0);
      } else if (p == 20) {
        mostrar(700, 20, 80, 40, 25, 20, 0);
      } else if (p == 21) {
        image(e[p], posx, 0);
        bot.texto(230, 0, 20, 20, 40);
        bot.b(700, 20, 80, 40, 25);
      } else if (p == 22) {
        image(e[p], posx, 0);
        bot.texto(230, 0, 20, 20, 40);
        bot.texto(40, 0, 400, 350, 41);
        bot.b(700, 20, 80, 40, 25);
      } else if (p == 23) {
        mostrar(700, 20, 80, 40, 25, 23, 0);
      }
    }
    if (estado.equals("final")) {
      if (p == 24) {
        mostrar(335, 240, 130, 50, 26, p, 0);
        bot.b(335, 310, 130, 50, 27);
      }
    }
    if (estado.equals("creditos")) {
      if (p == 25) {
        background(0);
        bot.texto(20, 255, 0, 0, 0);
        bot.b(700, 20, 80, 40, 28);
        text("creado por\n\nCACINELLI, RODRIGO\n\n\n\n\n\n\n\n\nCOMISION 2\n\n\n\n\n\n\n\nautor de la historia\n\nCARLO COLLODI\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nFIN.", width/2, mov);
        if (mov>-600) {
          mov--;
        }
      }
    }
  }
  void click() { //-------------------------ACCION DE CLICKIEAR Y AVANZAR DE PANTALLA---------------------//
    if (estado.equals("menu")) {
      reciclar();
      if (p == 0) {
        b_accion(350, 450, 240, 290, 1, "aventura");
        b_accion(335, 465, 310, 360, 25, "creditos");
      }
    }
    if (estado.equals("aventura")) {
      if (p == 1) {
        b_accion(700, 780, 20, 60, 2, "aventura");
      } else if (p == 2) {
        b_accion(10, 120, 10, 60, 3, "aventura");
        b_accion(10, 120, 80, 130, 4, "aventura");
      } else if (p == 3) {
        b_accion(650, 785, 540, 580, 0, "menu");
      } else if (p == 4) {
        b_accion(10, 120, 10, 60, 5, "aventura");
        b_accion(10, 120, 80, 130, 6, "aventura");
      } else if (p == 5) {
        b_accion(700, 780, 20, 60, 6, "aventura");
      } else if (p == 6) {
        b_accion(700, 780, 20, 60, 7, "aventura");
      } else if (p == 7) {
        b_accion(10, 120, 10, 60, 9, "aventura");
        b_accion(10, 120, 80, 130, 10, "inicio");
      } else if (p == 8) {
        b_accion(650, 785, 540, 580, 0, "menu");
      } else if (p == 9) {
        b_accion(700, 780, 20, 60, 12, "aventura");
      } else if (p == 10){//---------------------------SALTO AL VIDEOJUEGO-------------------------------// 
    } else if (p == 12) {
        b_accion(700, 780, 20, 60, 13, "aventura");
      } else if (p == 13) {
        b_accion(700, 780, 20, 60, 14, "aventura");
      } else if (p == 14) {
        b_accion(700, 780, 20, 60, 15, "aventura");
      } else if (p == 15) {
        b_accion(700, 780, 20, 60, 16, "aventura");
      } else if (p == 16) {
        b_accion(700, 780, 20, 60, 17, "aventura");
      } else if (p == 17) {
        b_accion(700, 780, 20, 60, 18, "aventura");
      } else if (p == 18) {
        b_accion(700, 780, 20, 60, 19, "aventura");
      } else if (p == 19) {
        b_accion(700, 780, 20, 60, 20, "aventura");
      } else if (p == 20) {
        b_accion(700, 780, 20, 60, 21, "aventura");
      } else if (p == 21) {
        b_accion(700, 780, 20, 60, 22, "aventura");
      } else if (p == 22) {
        b_accion(700, 780, 20, 60, 23, "aventura");
      } else if (p == 23) {
        b_accion(700, 780, 20, 60, 24, "final");
      }
    }
    if (estado.equals("final")) {
      if (p == 24) {
        b_accion(335, 465, 240, 290, 0, "menu");
        b_accion(335, 465, 310, 360, 25, "creditos");
      }
    }
    if (estado.equals("creditos")) {
      if (p == 25) {
        b_accion(700, 780, 20, 60, 0, "menu");
      }
    }
  }
  void reciclar() { //--------------------------RECICLA POSICION DE IMAGEN Y MOVIMIENTO DE CREDITOS-------------------------//
    mov = 600;
    posx = 0;
    posy = 0;
  }
  void mostrar(int x, int y, int x_, int y_, int lin1, int lin2, int op) {//------ENCAPSULA TODA CONFIGURACION DE BOTONES, TEXTO E IMAGE----------------//
    image(e[p], posx, posy);
    bot.ct(lin2);
    bot.b(x, y, x_, y_, lin1);
    bot.op( x, y, op);
  }
  void cambiarEstado( String nuevoEstado ) {
    estado = nuevoEstado;
  }

  void b_accion(int posX, int posX_, int posY, int posY_, int pant, String es) {

    if (mouseX > posX && mouseX < posX_ && mouseY > posY && mouseY < posY_) {
      cambiarEstado(es);
      p = pant;
    }
  }
  float getEscena() {
    return p;
  }
  String getEstado(){
  return estado;
  }
}
