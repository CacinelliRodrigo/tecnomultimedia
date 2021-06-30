PFont fuente;
PImage fondo;
PImage director;
int posYtexto1 = -600;
int posYtexto2 = 1500;
int posYtexto3 = -1600;
int posYtexto4 = 2500;
int posYtexto5 = -2600;
int posYtexto6 = 3500;
int posYtexto7 = -3850;
int posYtexto8 = -4300;
int posYtexto9 = -4700;
int sube1 = 3750;
int sube2 = 5500;
int baja4 = -5500;
int baja1 = -2300;
int baja2 = -4400;
int baja3 = -6400;
int linea1;
int linea2= -20;
int linea3= -40;
int imagen1 = -3900;
int imagen2 = -4300;
int imagen3 = -4700;
int imagen4 = -5100;
int imagen5 = -5500;
int imagen6 = -5900;
int imagen7 = -6300;
int imagen8 = -6700;


void setup(){
  size(400,400);
  fondo = loadImage("negro.jpg");
  director = loadImage("directorr.jpg");
  background(68,216,113);
}

void draw(){
  background(68,216,113);
  stroke(54,87,149); //color de linea
  strokeWeight(2); //ancho de linea
  
  fuente = loadFont("letras1.vlw");
  textSize(20);
  textAlign(CENTER);
  
  line(0,15,linea1,15);
  line(0,20,linea1,20);
  line(0,40,linea2,40);
  line(0,45,linea1,45);
  line(0,60,linea2,60);
  line(0,80,linea2,80);
  line(0,100,linea1,100);
  line(0,105,linea2,105);
  line(0,120,linea1,120);
  line(0,140,linea3,140);
  line(0,160,linea1,160);
  line(0,180,linea2,180);
  line(0,185,linea1,185);
  line(0,200,linea3,200);
  line(0,220,linea2,220);
  line(0,240,linea1,240);
  line(0,245,linea1,245);
  line(0,260,linea3,260);
  line(0,280,linea1,280);
  line(0,300,linea2,300);
  line(0,305,linea1,305);
  line(0,320,linea3,320);
  line(0,340,linea1,340);
  line(0,360,linea2,360);
  line(0,380,linea2,380);
  line(0,390,linea1,390);
  
  line(15,0,15,linea3);
  line(20,0,20,linea1);
  line(40,0,40,linea2);
  line(45,0,45,linea2);
  line(60,0,60,linea1);
  line(80,0,80,linea1);
  line(100,0,100,linea3);
  line(105,0,105,linea3);
  line(120,0,120,linea2);
  line(140,0,140,linea1);
  line(160,0,160,linea2);
  line(180,0,180,linea1);
  line(185,0,185,linea3);
  line(200,0,200,linea1);
  line(220,0,220,linea2);
  line(240,0,240,linea3);
  line(245,0,245,linea1);
  line(260,0,260,linea3);
  line(280,0,280,linea2);
  line(300,0,300,linea2);
  line(305,0,305,linea3);
  line(320,0,320,linea1);
  line(340,0,340,linea2);
  line(360,0,360,linea1);
  line(380,0,380,linea3);
  line(390,0,390,linea1);
  
  image(director,0,imagen1,400,400);
  image(fondo,-50,imagen2,600,400);
  image(fondo,-50,imagen3,600,400);
  image(fondo,-50,imagen4,600,400);
  image(fondo,-50,imagen5,600,400);
  image(fondo,-50,imagen6,600,400);
  image(fondo,-50,imagen7,600,400);
  image(fondo,-50,imagen8,600,400);
  
  
  noStroke();
  rect(30,baja1,70,20);
  rect(300,sube1,70,20); 
  rect(30,baja2,70,20); 
  rect(300,sube2,70,20); rect(30,baja4,70,20);
  rect(30,baja3,70,20);
  
  text("METRO-GOLDWYN-MAYER PRESENT", width/2, posYtexto1);
  text("PETTER SELLER", width/2, posYtexto2);
  text("GEORGE C. SCOTT", width/2, posYtexto3);
  text("KEENAN WYNN", width/2, posYtexto4);
  text("EN", width/2, posYtexto5);
  text("DR. STRANGELOVE", width/2, posYtexto6);
  text("MUSICA COMPUESTA POR \n LAUTIE JHONSON", width/2, posYtexto8);
  text("GRACIAS POR VER <3", width/2, posYtexto9);
  textAlign(LEFT);
  text("DIRECTOR \n ALFRED \n HITCHCOCK", 10, posYtexto7);
  
  
  posYtexto1+=2; 
  posYtexto2-=2;
  posYtexto3+=2;
  posYtexto4-=2;
  posYtexto5+=2;
  posYtexto6-=2;
  posYtexto7+=2;
  posYtexto8+=2;
  posYtexto9+=2;
  
  imagen1+=2;
  imagen2+=2;
  imagen3+=2;
  imagen4+=2;
  imagen5+=2;
  imagen6+=2;
  imagen7+=2;
  imagen8+=2;
  
  sube1-=4;
  sube2-=4;
  baja1+=4;
  baja2+=4;
  baja3+=4;
  baja4+=4;
  
  linea1+=2;
  linea2+=2;
  linea3+=2;
  
}
void mouseClicked(){

  if(mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height){

      fill(random(255),random(255),random(255));

    }else {
      fill(255,255,255);
    }

}
