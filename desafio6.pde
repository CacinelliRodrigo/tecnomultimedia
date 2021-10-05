Boton a;

void setup(){
  
  size( 500, 500 );
  a = new Boton(250,350,50);
}

void draw(){
  
  a.dibujo();
  a.update();
}

void mousePressed(){
  
  a.click();
  
}
