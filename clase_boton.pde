class Boton{
  
  //CAMPO - VARIABLES -
  color fondo;
  color btnEstado;
  float btnX = 250; 
  float btnY = 350;
  float btnR = 50;
  
  //CONSTRUCTOR - VOID SETUP -
  
  Boton(float btnX_, float btnY_, float btnR_){
    
    btnX = btnX_;
    btnY = btnY_;
    btnR = btnR_;
    fondo = color(0);
    btnEstado = color( 255 );
    
  }
  
  //METODOS - FUNCIONES -
 
  void dibujo(){
    background(fondo);
    fill(btnEstado);    
    
    //DIBUJO DE BOTON
    circle( btnX, btnY, btnR*2 );
        
  }
  
  void update(){
    
    if( dist(mouseX, mouseY, btnX, btnY ) < btnR ){ 
      
     btnEstado = color( 255, 0, 0 );
      
     }else{
        
        btnEstado = color ( 100 );
        
      }
      
  }
  
  void click(){
    
    //ACCION DE BOTON
    
    if( dist(mouseX, mouseY, btnX, btnY ) < btnR ){
      
    fondo = color( random(255), 0, 0 );
    
  }
  
  }
  
  
  
  
}
