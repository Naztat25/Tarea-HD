int star=100;
int star1 = star;
int star2 = star1+star;
int star3 = star2+star;
int star4 = star3+star;
int star5 = star4+star;

void setup() {
  //Lienzo
  size(640, 640);
}

void draw() {
  background(0);
 //estrellas
stroke(255);
point(star1+30, star1);
point(star1, star3); 
point(star2, star4);
point(star3, star1+300); 
point(star4+70, star2+60);
point(star4, star4+510);
point(star5+30, star4+50);
point(star2, star2+60);
point(star5, star2+20);
point(star2+15, star5+20);
point(star1+12, star1+50);
point(star1+100, star3+70); 
point(star2+80, star4+90);
point(star3+65, star1+35); 
point(star4+70, star2+60);
point(star4, star4+77);
point(star5+30, star4+50);
point(star2+88, star2+20);
point(star5, star2+30);
point(star2+100, star5+20);
  
    // ellipse if (mousePressed)que rota y se traslada  
  pushMatrix();
  fill(150,0,0);
  translate(width*0.5, height*0.5);
  rotate(frameCount / 300.0);
  ellipse(300, 20, 100, 100);  
  popMatrix();
  
  pushMatrix();
  fill(255,255,0);
  translate(width*0.5, height*0.5);
  rotate(frameCount / 50.0);
  polygon(0, 0, 80, 20);  // Icosahedron
  popMatrix();
  
  pushMatrix();
  fill(0,0,255);
 // cambiar el color del heptagono a verde presionando el boton derecho del mouse
 if(mousePressed) {
   // cambiar el color del heptagono a rojo presionando el boton izquierdo del mouse
   if (mouseButton == LEFT){
     fill(0,255,0);
   } else { fill(255,0,0);}
  }
  translate(width*0.8, height*0.5);
  rotate(frameCount / 25.0);
  polygon(0, 0, 70, 7);  // Heptagon
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