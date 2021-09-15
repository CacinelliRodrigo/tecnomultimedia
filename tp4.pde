//https://youtu.be/l8zsOpsCDIs

PFont fuente;
PImage[] p = new PImage[25];
int pantalla = 0;
int mov = 600;

void setup(){
  size(800, 500);
  fuente = loadFont("letras.vlw");
  textFont(fuente);

for(int i = 0 ; i < p.length ; i++){
  p[i] = loadImage("pantalla" + i + ".png");
}
  
}
void draw(){
  if(pantalla == 0){
    
    textSize(20);
    image(p[pantalla],0,0,width,height);
    strokeWeight(6);
    stroke(255,243,3);
    fill(0);
    rect(355,225,100,50);
    fill(255);
    textAlign(CENTER);
    text("START",405,255);
    
    textSize(20);
    fill(234,212,43);
    rect(500,400,130,80);
    textAlign(LEFT);
    fill(0);
    text("CREDITOS", 510, 450);
    
  }else if(pantalla == 1){
  
   cuadrotexto();
   botoncontinuar();
   
   //TEXTO
   fill(0);
   textSize(20);
   textAlign(LEFT);
   text("Gepeto es un pobre campecino, que un dia, se le ocurrio hacer un niño de madera con\nuna leño parlanchina que le habia regalado el leñador del pueblo.",30,375);
  
  }else if(pantalla == 2){
    
    cuadrotexto();
    botonesdecision();
    
    
    //TEXTO
    textSize(20);
    fill(0);
    text("¡Asi es como nace Pinocho!...\nSe levanta y se hacerca a Gepeto ¿Que hará?",30,375);
    
    textSize(17);
    text("En la cara",20,40 );
    text("En la rodilla",15,110);
 
    
    }else if(pantalla == 3){
      
      cuadrotexto();
      botonreiniciar();
      
      //TEXTO
      fill(0);
      text("PINOCHO GOLPEA FUERTE MUCHAS VECES A GEPETO!....ESTO LO\n HACE ENOJAR MUCHO!!! TANTO QUE TIRA A PINOCHO AL FUEGO \nY MUERE QUEMADO...\n\n\nUn poco drástica la reaccion...",30,375);
      
    }else if(pantalla==4){
      
      cuadrotexto();
      botonesdecision();
    
      //TEXTO
      fill(0);
      textSize(20);
      text("PINOCHO LE DA UN PATADON EN LA RODILLA TAN FUERTE QUE HACE \nCAER AL CARPINTERO!",30,375);  
      textSize(17);
      text("Serguir \npatenado",20,35 );
      text("Escapar",25,110);
    
    }else if(pantalla==5){
      
      cuadrotexto();
      botoncontinuar();

      //TEXTO
      textSize(20);
      fill(0);
      text("Pinocho decide seguir pateando al pobre Gepeto....",30,375);  
      
      
    }else if(pantalla==6){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      fill(0);
      textSize(20);
      text("Pinocho escapa al pueblo Gepeto lo trajo al mundo.",30,375);  
      
    
    }else if(pantalla==7){
      
      cuadrotexto();
      botonesdecision();
    
      //TEXTO
      textSize(20);
      fill(0);
      text("Un guardia ve desnudo a Pinocho y lo levanta para preguntarle sorprendido \nporque esta así.",30,375); 
      textSize(17);
      text("Culpar a \nGepeto",20,35 );
      text("No hablar",25,110);
      
      //BOTONES DE ELECCIO SI HABALR O NO
    
    }else if(pantalla==8){

      cuadrotexto();
      botonreiniciar();
    
      //TEXTO
      textSize(20);
      fill(0);
      text("Por algun motivo no muy conveniente para la historia Pinocho \ndecide no hablar, haciendo enojar al guardia que lo \nmanda preso por andar desnudo en la vía pública.",30,375);  
    
    }else if(pantalla==9){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      fill(0);
      textSize(20);
      text("-¡ME TALLÓ GEPETO!\nLe dijo Pinocho al guardia. Sin mas que decir el guardia lo baja y \nse va en busca de Gepeto.",30,375);  
 
    }else if(pantalla==10){
      
      cuadrotexto();
      botonesdecision();
    
      //TEXTO
      textSize(20);
      fill(0);
      text("El guardia sin mediar palabras con Gepeto lo arresta y lo mete preso \npor acoso a menores...\n\n...\nturbio...",30,375); 
      textSize(17);
      text("Volver a \ncasa",20,35 );
      text("Irse de joda",20,110);
      
      //BOTONES DE ELECCIOS SI VOLVER A CASA O NO
      
    }else if(pantalla==11){
      
      cuadrotexto();
      botonreiniciar();
      //TEXTO
      textSize(20);
      fill(0);
      text("Pinocho decide no volver a su casa y vivir la vida loca...fue asesinado a los \npocos dias por meterse con la mafia de la aldea",30,375);  
            
    }else if(pantalla==12){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      textSize(20);
      fill(0);
      text("Pinocho decide volver a su casa pero no encuentra a Gepeto, \npero si a alguien mas...",30,375);  
      
    }else if(pantalla==13){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      textSize(20);
      fill(0);
      text("¡ES PEPE EL GRILLO QUERIENDO REGAÑARLO POR\n LO QUE LE HIZO A SU PADRE!",30,375);       
      
    }else if(pantalla==14){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      textSize(20);
      fill(0);
      text("Pinocho le lanza un martillo para que se calle Pepe Grillo.",30,375);  
      
    }else if(pantalla==15){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      textSize(20);
      fill(0);
      text("Desgraciadamente Pepe Grillo no sobrevivió a semejante golpe...",30,375);  
      
    }else if(pantalla==16){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      fill(0);
      textSize(20);
      text("Despues de lanzarle el martillo al pobre Grillo, Pinocho \ndecide tomar una siesta junto al fuego...",30,375);  

    }else if(pantalla==17){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      textSize(20);
      fill(0);
      text("Se duerme tan cerca que el fuego prende sus piernas por completo...",30,375);  
       
    }else if(pantalla==18){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      fill(0);
      textSize(20);
      text("Por suerte logra salvarse pero queda inmovil en ese lugar hasta \nque su padre pueda salir de la carcel.",30,375);  
       
    }else if(pantalla==19){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      fill(0);
      textSize(20);
      text("Gepeto lo repara y Pinocho se disculpa y promete estudiar...",30,375); 
       
    }else if(pantalla==20){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      textSize(20);
      fill(0);
      text("Gepeto hace un esfuerzo para comprar un libro de estudio y \ntiene que vender su unico abrigo...",30,375);  
       
    }else if(pantalla==21){
      
      background(255);
      botoncontinuar();
      fill(0);
      textSize(350);
      textAlign(CENTER);
      text("FIN",400,350);
       
    }else if(pantalla==22){
      
      background(255);
      botoncontinuar();
      
      fill(0);
      textSize(350);
      textAlign(CENTER);
      text("FIN",400,350);
      textSize(40);
      text("mentira...",400,450);
 
    }else if(pantalla==23){
      
      cuadrotexto();
      botoncontinuar();
    
      //TEXTO
      fill(0);
      textAlign(LEFT);
      textSize(20);
      text("Pinocho lo vendió para irse a ver un show.",30,375);  
       
    }else if(pantalla==24){
      
      cuadrotexto();
      botonreiniciar();
      textSize(20);
      fill(234,212,43);
      rect(500,400,130,80);
      textAlign(LEFT);
      fill(0);
      text("CREDITOS", 510, 450);
      
      //TEXTO
      textSize(20);
      fill(0);
      text("LALALALALALALALA AHORA SI, FIN.",30,375);  
      
    }else if(pantalla == 25){
      
      background(0);
      textSize(20);
      textAlign(CENTER);
      fill(255);
      text("creado por\n\nCACINELLI, RODRIGO\n\n\n\n\n\n\n\n\nCOMISION 2\n\n\n\n\n\n\n\nautor de la historia\n\nCARLO COLLODI\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nFIN.",width/2,mov);
      if(mov>-600){
        mov--;
      }
      fill(255);  
      strokeWeight(2);
      stroke(255,255,0);
      rect(720,20,60,30);
      fill(0);
      textSize(15);
      text("Skip",750,40);
      
    }
    
  
  
}

void mouseClicked(){
  
  if(pantalla == 0){
    
    if(mouseX > 355 && mouseX < 655 && mouseY > 225 && mouseY < 275){

      pantalla = 1;

    }
    if(mouseX > 500 && mouseX <  630 && mouseY > 400 && mouseY < 480){
    
    pantalla = 25;
 
    }
  }
  
  if(pantalla == 1){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 2){
    
    if(mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 60){
      
      pantalla = 3;

    }else if(mouseX > 10 && mouseX < 110 && mouseY > 80 && mouseY < 130){
      
      pantalla = 4;
      }
  }else if(pantalla == 3){
    
    botoncontinuaraccion();
    botonreiniciaraccion();
    
  }else if(pantalla == 4){
    
    if(mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 60){
      
      pantalla = 5;

    }else if(mouseX > 10 && mouseX < 110 && mouseY > 80 && mouseY < 130){
      
      pantalla = 6;
      }
    
  }else if(pantalla == 5){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 6){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 7){
    
    
    if(mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 60){
      
      pantalla = 9;

    }else if(mouseX > 10 && mouseX < 110 && mouseY > 80 && mouseY < 130){
      
      pantalla = 8;
      }
    
  }else if(pantalla == 8){
    
    botoncontinuaraccion();
    botonreiniciaraccion();
    
  }else if(pantalla == 9){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 10){
    
    if(mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 60){
      
      pantalla = 12;

    }else if(mouseX > 10 && mouseX < 110 && mouseY > 80 && mouseY < 130){
      
      pantalla = 11;
      }
    
  }else if(pantalla == 11){
    
    botoncontinuaraccion();
    botonreiniciaraccion();
    
  }else if(pantalla == 12){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 13){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 14){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 15){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 16){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 17){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 18){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 19){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 20){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 21){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 22){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 23){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 24){
    
    botonreiniciaraccion();
    
    if(mouseX > 500 && mouseX <  630 && mouseY > 400 && mouseY < 480){
    
    pantalla = 25;
 
    }
    
  }else if(pantalla == 25){
      
    if(mouseX > 720 && mouseX <  780 && mouseY > 20 && mouseY < 50){
    
    pantalla = 0;

    }
  }
}
