class guardia {
  escenario escenario;
  pinocho pinocho;
  // PROPIEDADES > variables
  //Variables velocidad, tamanio, posicion
  float posX, posY, posX1, posY1, vel;
  int c,ene, puntos;
  PImage[] enemigo = new PImage[10];

  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  // Inicializo variables
  guardia(float x_, float y_, float x1_, float y1_) {
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
  void enemigo(escenario e, escenario g) {
    float p = e.getEscena();
    if (p == 1) {
      
      image( enemigo[ene], posX, 400,130,200 );
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
      if (puntos == 60) { //CONDICION PARA GANAR
        g.cambiarEstado("ganar");
        puntos = 0;
      }
  }
  // --mueve los guardias y llama a reciclar

  void reciclar() {
    //RECLICLAR
    posX = random(900, 1200);
    vel = random(8, 30);
    // --recicla propiedades de guardia una vez llegue al final de la pantalla(valor inicial)

    // color(PImage)
    // cambia el color cada vez que se actialice
  }
  void click(escenario e) {//reseteo de puntos
    float p = e.getEscena();
      if (p == 2) {
        if (mouseX > 650 && mouseX < 780 && mouseY > 400 && mouseY < 480) {
          puntos = 0;
        }
      }
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
