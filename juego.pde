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
    jugador = new pinocho(50, 50, 50, 50);
    enemigo = new guardia(500, 500, 50, 100);
    escena = new escenario(0, 0);
  }




  // -----------------------------------------------------
  // METODOS > funciones
  void dibujar() {
    escena.dibujar();
    jugador.salto();
    jugador.dibujar();
    enemigo.dibujar();
  }
  void actualizar() {
    // --logicaDeEstado
    jugador.perder();

    escena.actualizar();
    enemigo.actualizar();
    jugador.colision(enemigo);
  }
  void reciclar() {
    enemigo.reciclar();
  }
}
