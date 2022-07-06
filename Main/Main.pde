int numClouds;
Clouds[] fluffies;

void setup() {
  size(1600, 800);
  background(126,200,80);
 numClouds = (int)random(6, 11);
 fluffies = new Clouds[numClouds];

 for(int i=0; i < numClouds; i++){
   fluffies[i] = new Clouds(random(width), random(300));
 }
}

void draw() {

  showDaySky();
  stroke(0);
  strokeWeight(3);
  drawHouse(650, 0, 300, 250);

  // Lapangan
  pushMatrix();
  noStroke();
  fill(108,84,30);
  rect(100, 250, 1400, 500);
  popMatrix();
  
  pushMatrix();
  //Gawang kiri
  fill(255, 255, 255);
  stroke(255);
  strokeWeight(8);
  line(100, 350, 30, 350);
  
  fill(255, 255, 255);
  stroke(255);
  line(100, 650, 30, 650);
  
  fill(255, 255, 255);
  stroke(255);
  line(30, 350, 30, 650);
  
  
  //Gawang kanan
  fill(255, 255, 255);
  stroke(255);
  line(1500, 350, 1570, 350);
  
  fill(255, 255, 255);
  stroke(255);
  line(1500, 650, 1570, 650);
  
  fill(255, 255, 255);
  stroke(255);
  line(1570, 350, 1570, 650);
  
  
  //Garis tengah
  fill(108,84,30);
  stroke(255, 255, 255);
  strokeWeight(5);
  ellipse(800, 500, 200, 200);
  
  fill(255, 255, 255);
  stroke(255);
  line(800, 250, 800, 750);
  
  //garis gawang kiri
  fill(255, 255, 255);
  stroke(255);
  line(100, 700, 300, 700);
  
  fill(255, 255, 255);
  stroke(255);
  line(100, 300, 300, 300);
  
  fill(255, 255, 255);
  stroke(255);
  line(300, 300, 300, 700);
  
  //Garis gawang kanan
  fill(255, 255, 255);
  stroke(255);
  line(1500, 700, 1300, 700);
  
  fill(255, 255, 255);
  stroke(255);
  line(1500, 300, 1300, 300);
  
  fill(255, 255, 255);
  stroke(255);
  line(1300, 300, 1300, 700);
  popMatrix();
  
  // Pohon kiri
  noStroke();
  fill(114,92,66);
  rect(140, 250, 60, -80);
  
  fill(97, 138, 61);
  triangle(167, 100, 90, 200, 250, 200);
  triangle(167, 60, 90, 160, 250, 160);
  triangle(167, 20, 90, 120, 250, 120);
  
  
  // Pohon kanan
  noStroke();
  fill(114,92,66);
  rect(1460, 250, -60, -80);
  
  fill(97, 138, 61);
  triangle(1425, 100, 1350, 200, 1510, 200);
  triangle(1425, 60, 1350, 160, 1510, 160);
  triangle(1425, 20, 1350, 120, 1510, 120);

  
}

//class Clouds{
//  float x, y;  // postion
//  float size = 45;
//  float sizeAugmenter = random(5,100);
//  color fillColor = color(240,243,252); // color of clouds
//  color strokeColor = color(240, 243, 255);
  
//  Clouds(float xcord, float ycord){
//    x = xcord;
//    y = ycord;
//  }
  
//  void init(){
//    this.drawClouds();
//  }
  
//  void drawClouds(){
//    fill(fillColor);
//    ellipse(x-8, y+12, size+sizeAugmenter, size);
//    stroke(strokeColor);
//    ellipse(x, y, size, size);
    
//    noStroke();
//    ellipse(x+8, y+12, size+sizeAugmenter, size);
//  }
  
//  void setSpeed(float num){
//    x += num;
//    if(x > width){
//      x = 0;
//    }
//  }

//}

void showDaySky(){
  background(199, 234, 250); // light blue
  
  noStroke();
  fill(255, 200, 77); // sun's color
  ellipse(100,100, 100,100); // Sun
  
  for(int i=0; i < numClouds; i++){
    fluffies[i].init(); //clouds
    fluffies[i].setSpeed(.08);
  }
}
