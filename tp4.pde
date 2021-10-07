//https://youtu.be/l8zsOpsCDIs
//https://youtu.be/Cc37QJbMEww

PImage[] p = new PImage[25];
String[] t;

PFont fuente;
int pantalla = 0;
int mov = 600;

void setup(){
  
  size(800, 500);
  fuente = loadFont("letras.vlw");
  textFont(fuente); 
  
  t = loadStrings("list.txt");

  for(int i = 0 ; i < p.length ; i++){
    p[i] = loadImage("pantalla" + i + ".png");
}
  
}
void draw(){
  if(pantalla == 0){
    
    image(p[pantalla],0,0,width,height);
    
    //START
    boton(350,240,100,50,29);
    //CREDITOS
    boton(500,400,130,80,27);
    
  }else if(pantalla == 1){
    
   fondo();
   cuadrotexto();
   botoncontinuar(30);
  
  }else if(pantalla == 2){
    
    fondo();
    botonesdecision(31,32);
    cuadrotexto();
    
    }else if(pantalla == 3){
      
      fondo();
      cuadrotexto();
      boton(650,400,130,80,26);
      
      
    }else if(pantalla==4){
      
      fondo();
      cuadrotexto();
      botonesdecision(33,34);
    
    }else if(pantalla==5){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
      
      
    }else if(pantalla==6){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
   
      
    
    }else if(pantalla==7){
      fondo();
      cuadrotexto();
      botonesdecision(35,36);
    
    }else if(pantalla==8){
      fondo();
      cuadrotexto();
      boton(650,400,130,80,26);
     
    
    }else if(pantalla==9){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
 
    }else if(pantalla==10){
      fondo();
      cuadrotexto();
      botonesdecision(37,38);
      
    }else if(pantalla==11){
      fondo();
      cuadrotexto();
      boton(650,400,130,80,26);
            
    }else if(pantalla==12){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
    
    }else if(pantalla==13){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
      
      
    }else if(pantalla==14){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
    
      
    }else if(pantalla==15){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
    
    }else if(pantalla==16){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
    

    }else if(pantalla==17){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
    
       
    }else if(pantalla==18){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
       
    }else if(pantalla==19){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
    
       
    }else if(pantalla==20){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
       
    }else if(pantalla==21){
      
      background(255);
      botoncontinuar(30);
      fill(0);
      textSize(350);
      textAlign(CENTER);
      text("FIN",400,350);
       
    }else if(pantalla==22){
      
      background(255);
      botoncontinuar(30);
      
      fill(0);
      textSize(350);
      textAlign(CENTER);
      text("FIN",400,350);
      textSize(40);
      text("mentira...",400,450);
 
    }else if(pantalla==23){
      fondo();
      cuadrotexto();
      botoncontinuar(30);
    
       
    }else if(pantalla==24){
      fondo();
      cuadrotexto();
      //REINICIO
      boton(650,400,130,80,26);
      //CREDITOS
      boton(500,400,130,80,27);
      
    }else if(pantalla == 25){
      
      background(0);
      textSize(20);
      textAlign(CENTER);
      fill(255);
      text("creado por\n\nCACINELLI, RODRIGO\n\n\n\n\n\n\n\n\nCOMISION 2\n\n\n\n\n\n\n\nautor de la historia\n\nCARLO COLLODI\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nFIN.",width/2,mov);
      if(mov>-600){
        mov--;
      }
      botoncontinuar(28);
      
    }
    
  
  
}

void mouseClicked(){
  
  if(pantalla == 0){
    
    botondecision(355,655,225,275,1);
    botondecision(500,630,400,480,25);
  }
  
  if(pantalla == 1){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 2){
    botondecision(10,110,10,60,3);
    botondecision(10,110,80,130,4);
    
  }else if(pantalla == 3){
    
    botoncontinuaraccion();
    //REINICIO
    botondecision(650, 780, 400, 480, 0);
    
  }else if(pantalla == 4){
    botondecision(10,110,10,60,5);
    botondecision(10,110,80,130,6);
    
  }else if(pantalla == 5){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 6){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 7){
    
    botondecision(10,110,10,60,9);
    botondecision(10,110,80,130,8);
    
  }else if(pantalla == 8){
    
    botoncontinuaraccion();
    botondecision(650, 780, 400, 480, 0);
    
  }else if(pantalla == 9){
    
    botoncontinuaraccion();
    
  }else if(pantalla == 10){
    botondecision(10,110,10,60,12);
    botondecision(10,110,80,130,11);
    
  }else if(pantalla == 11){
    
    botoncontinuaraccion();
    botondecision(650, 780, 400, 480, 0);
    
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
    
    botondecision(650, 780, 400, 480, 0);
    botondecision(500,630,400,480,25);
    
  }else if(pantalla == 25){
      
    botondecision(720,780,20,50,0);
  
    }
  }
