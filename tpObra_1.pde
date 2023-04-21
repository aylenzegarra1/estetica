int posX1, posY1, posX2, posY2, posX3, posY3, posX4, posY4;
int tam;
int dibujo; 

void setup (){
 size (500, 500);
 posX1 = 100;
 posY1 = 100;
 posY2 = 100;
 posX3 = 100;
 
 posX2= 400;
 posY3 = 400;
 posX4 = 400;
 posY4 = 400;
 
 tam = 50;
}

void draw (){
  background (255);
 // rectMode (CENTER);
  fill (255,0,0);
  rect (posX1, posY1, tam, tam); // BOTÓN 1
  fill (0,255,0);
  rect (posX2, posY2, tam, tam); // BOTÓN 2
  fill (0,0,255);
  rect (posX3, posY3, tam, tam); // BOTÓN 3
  fill (255,235,3);
  rect (posX4, posY4, tam, tam); // BOTÓN 4
}


void mouseClicked (){
   if (mouseX > posX1 && mouseX < posX1 + tam && mouseY > posY1 && mouseY < posY1 + tam){
    fill (255, 0 , 0);
    rect (posX1, posY1, 100, 100);
  }
  
  if (mouseX > posX2 && mouseX < posX2 + tam && mouseY > posY2 && mouseY < posY2 + tam){
    background (0,255,0);
    rect (posX2, posY2, 100, 100);
  }
  
  if (mouseX > posX3 && mouseX < posX3 + tam && mouseY > posY3 && mouseY < posY3 + tam){
    background (0,0,255);
    rect (posX3, posY3, 100, 100);
  }
  
  if (mouseX > posX4 && mouseX < posX4 + tam && mouseY > posY4 && mouseY < posY4 + tam){
    background (255,235,3);
    rect (posX4, posY4, 100, 100);
  }
  
}
