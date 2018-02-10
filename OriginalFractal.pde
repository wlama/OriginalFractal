int siz = 428;

public void setup() {
  size(500, 500);
  rectMode(CENTER);
  frameRate(1000000000);
}

public void draw() {
  background(0);
  myFractal(250,250,siz);
  siz++;
  if(siz == 858) {
    siz = 428;
  }
}

public void myFractal(float x, float y, float siz) {
  if(siz < 250) {
    fill(255, 255, 255);
    noStroke();
    rect(x, y, siz, siz);
  } else {
    for(int i = 2 ; i < 10000; i*=2) {
      myFractal(x + siz/i, y + siz/i, siz/(i*3));
      myFractal(x - siz/i, y + siz/i, siz/(i*3));  
      myFractal(x + siz/i, y - siz/i, siz/(i*3));
      myFractal(x - siz/i, y - siz/i, siz/(i*3));
      myFractal(x, y + siz/i, siz/(i*3));
      myFractal(x, y - siz/i, siz/(i*3));  
      myFractal(x + siz/i, y, siz/(i*3));
      myFractal(x - siz/i, y, siz/(i*3));
    }
  }
}
