void setup(){
  size(800,600);
  p1 = loadImage("PANTALLA1.jpg");
  p2 = loadImage("PANTALLA 2.png");
  p3 = loadImage("PANTALLA 3.jpg");
  p4 = loadImage("PANTALLA 4.jpg");
  p5 = loadImage("PANTALLA5.jpg");
  p6 = loadImage("PANTALLA6.jpg");
  p62 = loadImage("PANTALLA62.jpg");
  p63 = loadImage("PANTALLA63.jpg");
  p8 = loadImage("PANTALLA8.jpg");
  p9 = loadImage("PANTALLA9.jpg");
  p10 = loadImage("PANTALLA10.jpg");
  p11 = loadImage("PANTALLA11.jpg");
  p12 = loadImage("PANTALLA12.jpg");
}

void draw(){

  background(200);
  textSize(20);
  
  if(pantalla == 1){
  image(p1,0,0,width,height);
  
  
  //Cuadro de historia
  fill(234,212,43);
  rect(-2,450,804,200);
  fill(150);
  rect(20,470,760,115);
  
  //Boton continuar
  fill(234,212,43);
  rect(720,20,60,30);
  fill(150);
  noStroke();
  rect(725,30,35,10);
  triangle(760,25,760,45,775,35);
  
  fill(0);
  textSize(20);
  text(" Habia una vez, un emperador arrogante en un lejano reino.\n A él le encantaba la ropa lujosa y se gastaba todo el dinero en ella. . .", 30,500);
  
  }else if(pantalla == 2){
    background(200);
    image(p2,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" Ese mismo día, llegan dos estafadores al mercado del pueblo,\n que se presentaron como los mejores tejedores y con las mejores telas\n del mundo.", 30,500);
    
  }else if(pantalla == 3){
    image(p3,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" El emperador se entera de los rumores comenzado por estos supuestos\n y siente una fuerte curiosidad. . .", 30,500);
    
  } else if(pantalla == 31){
    image(p3,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton OPCION 1
    fill(234,212,43);
    rect(250,130,100,50);
    fill(0);
    text(" Escuchar", 252,165);
    
    //Boton OPCION 2
    fill(234,212,43);
    rect(450,130,100,50);
    fill(0);
    text(" Ignorar", 455,165);
    
    fill(0);
    text(" El emperador no sabe si creer o no en aquellos rumores. . .\n ¿Que debería hacer?", 30,500);
    
  } else if(pantalla == 32){ //FINAL 1
    image(p1,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    textAlign(LEFT);
    fill(0);
    text(" El emperador no dio bola aquellos rumores y sigue su vida. . . \n re flaco este final ¿No te parece?", 30,500);
    
    textSize(100);
    textAlign(CENTER);
    text("GAME OVER",mov,height/2);
    
    //BOTON DE REINICIO
    textSize(20);
    fill(234,212,43);
    rect(reinicio,475,100,100);
    textAlign(LEFT);
    fill(0);
    text("REINICIAR", reinicio, 525);
    
    if(mov<width/2){
      
      mov +=2;
      
    } else if(reinicio > 650){
      reinicio --;
      
    }
  } else if(pantalla == 4){
    image(p4,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" El emperador decide escuchar a estos supuestos tejedores e\ninmediatamente hace un trato con ellos", 30,500);
    
  }  else if(pantalla == 5){
    image(p5,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" El emperador tiene curiosidad e inseguridad por el hecho de que los tontos\n y los que no son aptos no pueden ver el traje, asique manda a su ministro\n mas confiable", 30,500);

   }  else if(pantalla == 6){
    image(p6,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" El ministro va donde los tejedores estan trabajando. Cuando los tejedores\n le muestra el trabajo se sorprende porque ¡No es capaz de verlo!", 30,500);
    
  }  else if(pantalla == 61){
    image(p6,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton OPCION 1
    fill(234,212,43);
    rect(250,130,100,50);
    fill(0);
    text(" VERDAD", 252,165);
    
    //Boton OPCION 2
    fill(234,212,43);
    rect(450,130,100,50);
    fill(0);
    text(" MENTIRA", 455,165);
    
    fill(0);
    text("¿Será que soy un tonto? ¿Será apto para mi puesto? se pregunta el ministro.\nRapidamente sale de la habitacion y yendo a contarle al emperador\npiensa ¿Qué debo decirle?", 30,500);
  
} else if(pantalla == 62){ //FINAL 1
    image(p62,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    textAlign(LEFT);
    fill(0);
    text(" Al decir la verdad el emperador encarcela al ministro, ya que\n nadie mas se animo a decir la verdad y termino quedando\n como un tonto frente a todos. ", 30,500);
    
    textSize(100);
    textAlign(CENTER);
    text("GAME OVER",mov2,100);
    
    //BOTON DE REINICIO
    textSize(20);
    fill(234,212,43);
    rect(reinicio2,475,100,100);
    textAlign(LEFT);
    fill(0);
    text("REINICIAR", reinicio2, 525);
    
    if(mov2<width/2){
      
      mov2 +=2;
      
    } else if(reinicio2 > 650){
      reinicio2 --;
      
    }
    
  }  else if(pantalla == 63){
    image(p63,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" Por miedo a perder su puesto el ministro le cuenta\n del magnifico traje que estan creando los tejedores", 30,500);
    
  }  else if(pantalla == 7){
    image(p5,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" Pasan los dias y al emperador le vuelve a dar curiosidad\n como va el traje, asique manda a otro de sus ministros. Al igual\n que el anterior le miente al no ver el traje.", 30,500);
    
  } else if(pantalla == 8){
    image(p8,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" El emperador ya no puede aguantar su curiosidad y con sus ministros para\n verlo. Para sorpresa de nadie ya, el emperador no puede ver el traje, pero\n como todos los demas, finje para no ser tomado por tonto.", 30,500);
    
  } else if(pantalla == 9){
    image(p9,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" Llega el grán día y son los mismos tejedores quienes\n vistan al emperador para el gran evento en el pueblo.", 30,500);
    
  } else if(pantalla == 10){
    image(p10,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" El emperador sale orgulloso reluciendo su traje nuevo, todos aplaudian\n y adulaban aun no viendo nada, el pueblo tambien sabia de aquellos\n rumores. Solo alguien a lo lejos ve que algo anda mal. . .", 30,500);
    
  }    else if(pantalla == 11){
    image(p11,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" ¡Esta desnudo! ¡El emperador esta desnudo! se escucha a lo lejos, es un niño\n que su inocencia le impide mentir a tal situacion.", 30,500);
    
  }     else if(pantalla == 12){
    image(p11,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
    
    fill(0);
    text(" Todo el pueblo pierde su miedo y comienza a reirse.\nEl emperador se dio cuenta de la terrible estafa que había sufrido. Pero por su \norgullo no dijo nada y sigió caminando como si nada hubiera pasado ", 30,500);
    
  }     else if(pantalla == 13){
    image(p12,0,0,width,450);
    
    //Cuadro de historia
    fill(234,212,43);
    rect(-2,450,804,200);
    fill(150);
    rect(20,470,760,115);
    
    textSize(100);
    textAlign(CENTER);
    fill(0);
    text("FIN",mov3,height/2);
    
    //BOTON DE REINICIO
    textSize(20);
    fill(234,212,43);
    rect(reinicio3,475,100,100);
    textAlign(LEFT);
    fill(0);
    text("  INICIO", reinicio3, 525);
    fill(255,0,0);
    rect(655,creditos3,100,55);
    fill(0);
    text("CREDITOS",655,creditos);
    
    if(mov3<width/2){
      
      mov3 +=2;
      
    } else if(reinicio3 > 650){
      reinicio3 --;
      
    } else if(creditos3<50){
      creditos++;
      creditos3++;
    }
    
    fill(0);
    text(" Mientras que eso pasaba los estafadores lograron escapar con\n todas las joyas, sedas e hilos de oro que\n pidieron para el supuesto traje. ", 30,500);
    
  } else if(pantalla == 14){
    fill(0);
    rect(0,0,width,height);
    
    //Boton continuar
    fill(234,212,43);
    rect(720,20,60,30);
    fill(150);
    noStroke();
    rect(725,30,35,10);
    triangle(760,25,760,45,775,35);
   
    fill(255,255,255);
    textSize(40);
    text("¡GRACIAS POR JUGAR!",width/5,sube1);
    text("CREADO POR:\nCACINELLI, RODRIGO",width/5,sube2);
    text("DIRECTOR:\nCACINELLI, RODRIGO",width/5,sube3);
    text("ANIMADOR:\nCACINELLI, RODRIGO",width/5,sube4);
    text("SONIDO:\nCACINELLI, RODRIGO",width/5,sube5);
    text("SALUDO ESPECIAL PARA:\nCACINELLI, RODRIGO",width/5,sube6);
    text("EN MEMORIA DE:\nCACINELLI, RODRIGO",width/5,sube7);
    
    sube1++;
    sube2++;
    sube3++;
    sube4++;
    sube5++;
    sube6++;
    if(sube7<=250){
    sube7++;
    }
    
  }
  
}

void mouseClicked(){

  if(pantalla == 1){

    //Botón de continuar

    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 2;

    }
  } else if(pantalla == 2){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 3;

    }
    
  } else if(pantalla == 3){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 31;
    }
    
  } else if(pantalla == 31){
    if(mouseX > 250 && mouseX < 350 && mouseY > 130 && mouseY < 180){
      
      pantalla = 4;  
      
    } if(mouseX > 455 && mouseX < 555 && mouseY > 130 && mouseY < 180){
      
      pantalla = 32; //final 1  
    }
    
  }  else if(pantalla == 32){
    if(mouseX > 650 && mouseX < 750 && mouseY > 475 && mouseY < 575){
      
      pantalla = 1;  
      
    }
    
  }  else if(pantalla == 4){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 5;

    }
    
  }   else if(pantalla == 5){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 6;

    }
    
  }   else if(pantalla == 6){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 61;

    }
    
  }  else if(pantalla == 61){
    if(mouseX > 250 && mouseX < 350 && mouseY > 130 && mouseY < 180){
      
      pantalla = 62; //FINAL 2  
      
    } if(mouseX > 455 && mouseX < 555 && mouseY > 130 && mouseY < 180){
      
      pantalla = 63;
    }
      
    } else if(pantalla ==62){
    if(mouseX > 650 && mouseX < 750 && mouseY > 475 && mouseY < 575){
      
      pantalla = 1; 
    }
    
    }else if(pantalla == 63){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 7;

    }
} else if(pantalla == 7){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 8;

    }
} else if(pantalla == 8){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 9;

    }
} else if(pantalla == 9){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 10;

    }
} else if(pantalla == 10){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 11;

    }
} else if(pantalla == 11){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 12;

    }
} else if(pantalla == 12){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 13;

    }
} else if(pantalla == 13){
    if(mouseX > 650 && mouseX < 750 && mouseY > 475 && mouseY < 575){

      pantalla = 1;

    }
    if(mouseX > 655 && mouseX < 755 && mouseY > 50 && mouseY < 105){

      pantalla = 14;

    }
} else if(pantalla == 14){
    if(mouseX > 720 && mouseX < 780 && mouseY > 20 && mouseY < 50){

      pantalla = 1;

    }
}
}
