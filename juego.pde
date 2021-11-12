class juego {


  // PROPIEDADES > variables
  int estado;
  int c;

  //EstadoGeneralDelJuego = menu, jugar, ganar, perder;
  pinocho jugador;
  guardia enemigo;
  escenario escena;
  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  juego() {
    // EstadoGeneralDelJuego = "menu";
    // Inicio objetos: pinocho, guardia,escenario
    jugador = new pinocho(50, 100, 100, 100);
    enemigo = new guardia(900, 432, 100, 150);
    escena = new escenario(0, 0);
  }




  // -----------------------------------------------------
  // METODOS > funciones
  void dibujar() {
    
    escena.draw(enemigo, jugador);
    jugador.jugador(escena);
    enemigo.enemigo(escena,escena);
  }
  void actualizar() {
    // --logicaDeEstado
    escena.actualizar();
    jugador.colision(enemigo,escena,escena);
    enemigo.click(escena);
  }
  
  void reciclar() {
    enemigo.reciclar();
  }
  void click(){
    escena.click(escena);
    jugador.click(escena);
  }
}
