int posX0;
int posY0;
int tamX;
int tamY;

boolean mostrarDibujo1, mostrarDibujo2, mostrarDibujo3, mostrarDibujo4, mostrarDibujo5, mostrarDibujo6;

PImage [] dibujos; 

void setup (){
  
 fullScreen ();
 noStroke();
 tamX = 100;
 tamY = 50;
 posX0 = 100;
 posY0 = 100;
 
 dibujos = new PImage [4];
 for (int i = 0; i < 4; i++) {
    dibujos [i] = loadImage (i + ".jpg");
  }
}

void draw (){
  
  background (255);
  
  // !!!!!!!!!!! DIBUJO DE BOTONES !!!!!!!!!!!!
  stroke (0);
  fill (255, 0, 0);
  rect (posX0, posY0, tamX, tamY); // 1
  fill (#FF7403);
  rect (posX0 + 200, posY0, tamX, tamY); // 2
  fill (#FAFF03);
  rect (posX0 + 400, posY0, tamX, tamY); // 3
  fill (0,255,0);
  rect (posX0 + 600, posY0, tamX, tamY); // 4
  fill (0, 0, 255);
  rect (posX0 + 800, posY0, tamX, tamY); // 5
  fill (#FF03C9);
  rect (posX0 + 1000, posY0, tamX, tamY); // 6
  
  // CUADRADO DE REFERENCIA PARA VER DONDE VAN LOS DIBUJOS
  fill (200);
  rect (300, 200, 800, 500); 
  
  //MUESTRA DIBUJOS
  if (mostrarDibujo1){
   image (dibujos[0], 500, 500);
  }
  if (mostrarDibujo2){
   image (dibujos[1], 600, 600);
  }
  if (mostrarDibujo3){
   image (dibujos[2], 400, 400);
  }
  if (mostrarDibujo4){
   image (dibujos[3], 300, 300);
  }
  
}



void mouseClicked (){
  if (mouseX > posX0 && mouseX < posX0 + tamX && mouseY > posY0 && mouseY < posY0 + tamY){
   println ("apretaste");
   mostrarDibujo1 = !mostrarDibujo1;
  }

}
