//    https://youtu.be/jmfPEjjjae8
int x;
int y;

float tono1 = 62;
float tono2 = 62;
float x1;
float y1;

float fondo1 = 255;
float fondo2 = 255;
float fondo3 = 255;

int linea = 2;
int r =2;

void setup(){
  size(1600,900);
}
void draw(){
  noStroke();
  background(fondo1,fondo2,fondo3);
  x1 = map(mouseX, 0, width, 0, 255);
  y1 = map(mouseY,0,height,0,255);
  fill(tono1,tono1,tono2);
  
  for(x=15 ; x<=width ; x=x+100){
    for(y=-40 ; y<=height ; y=y+200){
    rect(x,y,50,50);
      }
    }
    for(x=30 ; x<=width ; x=x+100){
      for(y=10 ; y<=height ; y=y+100){
        rect(x,y,50,50);
    }
  }
  for(x=45 ; x<=width ; x=x+100){
    for(y=60 ; y<=height ; y=y+200){
      rect(x,y,50,50);
      
    }
  }
  strokeWeight(linea);
  stroke(227,62,62);
  
  for(x=-40 ; x<height ; x=x+50){
    line(0,x,width,x);
    
  }
 if(keyPressed){
  if(key == 'x' || key == 'X'){
      tono1 = x1;
      tono2 = y1;
    }
 }if(key == 'r' || key== 'R'){
    x1 = tono1;
    y1 = tono2;
    
      tono1 = 62;
      tono2 = 62;
      
      fondo1 = 255;
      fondo2 = 255;
      fondo3 = 255;
      
      linea = 2;
    }
    
  }
  
  void keyReleased(){
     if(key == '+'){
      linea ++;
    }else if(key == '-'){
      linea--;
    }if(linea <= 1){
      linea = 1;
    }if(key == 'a' || key == 'a'){
      fondo1 = random(255);
      fondo2 = random(255);
      fondo3 = random(255);
    }
  }

  
