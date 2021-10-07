void fondo(){
  
  image(p[pantalla],0,0,width,400);
  
}
void cuadrotexto(){
  pushStyle();
    
   //FONDO DE TEXTO
   strokeWeight(10);
   stroke(0);
   fill(240,245,12);
   rect(5,350,790,145);
   popStyle();
   
   //TEXTO
   fill(0);
   textSize(20);
   textAlign(LEFT);
   text(t[pantalla],30,375,600,400);
}

void botoncontinuar(int lin){
  
   //BOTON CONTINUAR
   pushStyle();
   
   strokeWeight(2);
   fill(0);
   rect(720,20,60,30);
   
   if(lin == 28){
     fill(255);
     text(t[lin],750,40);
   }else{
     
     fill(255,255,0);
     noStroke();
     rect(725,30,35,10);
     triangle(760,25,760,45,775,35);
     popStyle();
 }
}

void botonesdecision(int op1,int op2){
  
  //BOTON UNO
   strokeWeight(2);
   stroke(0);
   fill(255,255,0);
   rect(10,10,100,50);
   //BOTON DOS
   rect(10,80,100,50);
   
   fill(0);
   textSize(17);
   text(t[op1],20,40);
   text(t[op2],15,110);
 
}

void boton(int x, int y, int x_, int y_,int lin){
  
  //BOTON
  pushStyle();
  textSize(20);
  fill(234,212,43);
  rect(x,y,x_,y_);
  textAlign(LEFT);
  fill(0);
  text(t[lin], x+10, y+30);
  popStyle();
}

void botoncontinuaraccion(){
  
  if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){
    
    pantalla ++;

    }
  
}

void botondecision(int posX, int posX_, int posY, int posY_, int pant){
  
  if(mouseX > posX && mouseX < posX_ && mouseY > posY && mouseY < posY_){
    
    pantalla = pant;

    }
  
}
