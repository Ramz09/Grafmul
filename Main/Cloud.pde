class Clouds{
  float x, y;  // postion
  float size = 45;
  float sizeAugmenter = random(5,100);
  color fillColor = color(240,243,252); // color of clouds
  color strokeColor = color(240, 243, 255);
  
  Clouds(float xcord, float ycord){
    x = xcord;
    y = ycord;
  }
  
  void init(){
    this.drawClouds();
  }
  
  void drawClouds(){
    fill(fillColor);
    ellipse(x-8, y+12, size+sizeAugmenter, size);
    stroke(strokeColor);
    ellipse(x, y, size, size);
    
    noStroke();
    ellipse(x+8, y+12, size+sizeAugmenter, size);
  }
  
  void setSpeed(float num){
    x += num;
    if(x > width){
      x = 0;
    }
  }

}
