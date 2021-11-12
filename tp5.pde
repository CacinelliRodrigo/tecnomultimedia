//------------------------------------------------------------------------
//VIDEO DE RECUPERATORIO 
//https://youtu.be/0Z9ZJVlryXI 

//PRIMER VIDEO DEL TRABAJO
//https://youtu.be/tL0hbElQ1u8

// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// RODRIGO CACINELLI
// "PINOCHO"
// (adjuntar captura de la pantalla a reemplazar en la carpeta data)

// "GO, PINOCHO, GO" o "¡COME BACK HOME!""*
// REFERENCIA: https://youtu.be/toeIxrRtbFg?t=61 Nes - Circus Charlie (1986) 
// REFERENCIA: https://www.youtube.com/watch?v=2apVwq-pX9E Google - Dino Run *Es el video mas presentable que esncontre jaja*

/* PROPUESTA DESCRIPTIVA

Mi idea es que Pinocho en la escena que escapa de su casa sea un juego
de plataformeo como Circus Charlie (Stage 2 mas especificamente) o 
como Dino Run de Google. Donde Pinocho corra y tenga que esquivar saltando
a la mafia de la aldea para poder volver a casa. Si logra llegar a cierta
cantidad de metros recorrido gana. Si lo atrapa la mafia muere colgado de un
arbol como en la historia.

*/

//------------------------------------------------------------------------

//Declaro la clase juego
juego juego;
void setup(){
  size(800,600);
  //inicio la clase juego
  juego = new juego();
  
  
}


void draw(){
  
  background(255);
  
  juego.dibujar();
  juego.actualizar();
  
}
void mouseClicked(){
  juego.click();
}

  
