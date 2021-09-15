void cuadrotexto(){
  pushStyle();
  image(p[pantalla],0,0,width,400);
    
   //FONDO DE TEXTO
   strokeWeight(10);
   stroke(0);
   fill(240,245,12);
   rect(5,350,790,145);
   popStyle();
}

void botoncontinuar(){
  
   //BOTON CONTINUAR
   pushStyle();
   strokeWeight(2);
   fill(0);
   rect(720,20,60,30);
   fill(255,255,0);
   noStroke();
   rect(725,30,35,10);
   triangle(760,25,760,45,775,35);
   popStyle();
}

void botonesdecision(){
  
  //BOTON UNO
   strokeWeight(2);
   stroke(0);
   fill(255,255,0);
   rect(10,10,100,50);
    
   //BOTON DOS
   rect(10,80,100,50);  
 
}

void botonreiniciar(){
  
  //BOTON DE REINICIO
  pushStyle();
  textSize(20);
  fill(234,212,43);
  rect(650,400,130,80);
  textAlign(LEFT);
  fill(0);
  text("REINICIAR", 660, 450);
  popStyle();
}

void botoncontinuaraccion(){
  
  if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){
    
    pantalla ++;

    }
  
}

void botonreiniciaraccion(){
  
  if(mouseX > 650 && mouseX <  780 && mouseY > 400 && mouseY < 480){
    
    pantalla = 0;

    }
  
}
