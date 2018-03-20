

float hype = 100;

int aX = 0;
int aY = 0;
int bY = 0;
int eX = 0;

boolean isWhite = true;
int tX = 200;
int tY = 200;
float angle = 0;

// SOH CAH TOA
// Sin o/h    Cos a/h    Tan o/a

// Cos(20) * 200

void settings() {
  size(400, 400);

}

void setup() {
  background(10);
  stroke(255);
  frameRate(30);
}

void draw() {
 
  clear();
  
  fill(0);  

  translate(tX, tY);
  
  ellipse(aX, aY, hype * 2, hype * 2);
  
  angle += 0.1f;
  int bX = aX - (int)(cos(angle) * hype);
  int cX = bX;
  int cY = bY - (int)(sin(angle) * hype);
  
  if(isWhite) stroke(255);
  else stroke(0);
  
  line(aX, aY, cX, cY);
  line(aX, aY, bX, bY);
  line(bX, bY, cX, cY);
}
