//variables puntos estrellas
int star=50;
int star1 = star;
int star2 = star1+star;
int star3 = star2+star;
int star4 = star3+star;
int star5 = star4+star;
// variables ellipses
int circleX= 40;
int circleY= 40;
int diam= 70;
int colo= 255;
// variables rectangulos
int andX=30;
int andY=170;
int andX1=640;
int andY1= 300;


void setup() {
  // tamaño del lienzo
  size(640, 360);
}

void draw() {
 //Fondo negro
 background(0);
 // cambiar el fondo a balnco al oprimir el mouse
 if (mousePressed == true){
    background(255);
  }
 // Dibujar puntos blancos alrededor del icosahedro
  stroke(255);
  point(star4+70, star2+60);
  point(star4, star4+510);
  point(star5+500, star4+50);
  point(star2, star2+60);
  point(star5, star2+20);
  point(star2+430, star5+20);
  point(star1+400, star1+50);
  point(star1+100, star3+70); 
  point(star2+80, star4+500);
  point(star3+65, star1+35); 
  point(star4+290, star2+60);
  point(star4, star4+500);
  point(star5+30, star4+50);
  point(star2+300, star2+20);
  point(star5+600, star2*9);
  point(star2+550, star5+20);
  point(star2+100, star5+20);
  // Dibujar rectángulos amarillos verticales
  rect(310,20,20,65);
  rect(310,270,20,65);
  // Dibujar ellipses
  // ellipse en movimiento
  circleX= circleX +1;
  // ellpise crece
  diam= diam +1;
  //ellipse cambia de color
  colo= colo -1;
  fill (0,colo,0);
  ellipse (circleX,circleY,diam,diam); 
  
  if (circleX > 640){
    circleX = 40;
    diam = 70;
    colo = 255;
  }
  
  // cambiar color de formas a rojo al oprimir el mouse
  if (mousePressed)
    fill (0,255,0);
  //ellipse 2
  
  // Aparecer rectangulos anaranjados si el mouse >400
  if(mouseX>30){
    fill (255,128,0);
    //rectangulo anaranjado que se desplaza a la derecha
    rect(andX,andY,20,20);
    andX= andX+2;
    if (andX > 640)
      andX = 0;
    // rectangulo anaranjado que se desplaza hacia la izquierda
    rect(andX1,andY1,20,20);
    andX1= andX1-3;
    if (andX1 < 0)
      andX1 = 640;
  }
  //
  pushMatrix();
  fill(245,239,84);
  //cambiar el color del icosahedro al oprimir el mouse
  if (mousePressed==true){
    stroke (255);
    fill(150,0,0);
  }
  translate(width*0.5, height*0.5);
  rotate(frameCount / 50.0);
  polygon(0, 0, 80, 20);  // Icosahedron
  popMatrix();
  pushMatrix();
  fill(0,0,255);
 // cambiar el color del heptagono a rojo presionando el boton derecho del mouse
  if(mousePressed) {
    // cambiar el color del heptagono a negro presionando el boton izquierdo del mouse
    if (mouseButton == LEFT){
      fill(150,0,0);
    } 
    else { 
      fill(0);
    }
  }
  //heptágono azul se mueve con las manecillas del reloj
  translate(width*0.8, height*0.5);
  rotate(frameCount / 25.0);
  polygon(0, 0, 70, 7);  
  popMatrix();
  
   // ellipse que rota y se traslada  
  pushMatrix();
  fill(150,0,0);
  translate(width*0.5, height*0.5);
  rotate(frameCount / 300.0);
  ellipse(300, 20, 100, 100);  
  popMatrix();
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}