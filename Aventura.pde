class Aventura {
  //PROPIEDADES
  Pantalla pant;
  Escenario es;
  Boton b;

  Pinocho jugador;
  Guardia enemigo;
  //----------------------------------------------
  //CONSTRUCTOR
  Aventura() {
    pant = new Pantalla(0, 0);
    b = new Boton();
    jugador = new Pinocho(50, 100, 100, 100);
    enemigo = new Guardia(900, 432, 100, 150);
    es = new Escenario(0,0);
  }
  //----------------------------------------------
  //METODOS
  void dibujar() {
    pant.escena();
    es.draw(enemigo, jugador, pant);
    jugador.jugador(pant);
    enemigo.enemigo(pant);
  }
  void actualizar() {
    // --logicaDeEstado
    es.actualizar(pant);
    jugador.colision(enemigo, pant);
    es.condicion(jugador, enemigo, pant);
  }
  void reciclar() {
    enemigo.reciclar();
  }
  void click() {
    pant.click();
    es.click(pant);
  }
}
