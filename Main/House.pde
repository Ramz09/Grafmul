void drawHouse(int houseX, int houseY, int houseWidth, int houseHeight){
  float frontY = houseY + houseHeight * .4;
  float frontHeight = houseHeight * .6;
  
  // front
  fill(255, 255, 153);
  rect(houseX, frontY, houseWidth, frontHeight);
  
  // roof
  fill(139, 69, 19);
  triangle(houseX, frontY,
           houseX + houseWidth * .5, houseY,
           houseX + houseWidth, frontY);
  
  float windowWidth = houseWidth * .25;
  float windowHeight = frontHeight * .25;
  float windowY = frontY + frontHeight * .15;
  
  float leftWindowX = houseX + houseWidth * .1;
  float rightWindowX = (houseX + houseWidth) - 
                       (houseWidth * .1) - windowWidth;
  
  // windows 
  fill(50, 125, 255);
  rect(leftWindowX, windowY, windowWidth, windowHeight);
  line(leftWindowX, windowY + windowHeight * .5,
       leftWindowX + windowWidth, windowY + windowHeight * .5);
  line(leftWindowX + windowWidth * .5, windowY,
       leftWindowX + windowWidth * .5, windowY + windowHeight);
  rect(rightWindowX, windowY, windowWidth, windowHeight);
  line(rightWindowX, windowY + windowHeight * .5,
       rightWindowX + windowWidth, windowY + windowHeight * .5);
  line(rightWindowX + windowWidth * .5, windowY,
       rightWindowX + windowWidth * .5, windowY + windowHeight);
  
  float doorWidth = houseWidth * .25;
  float doorHeight = frontHeight * .4;
  float doorX = houseX + houseWidth * .5 - doorWidth * .5;
  float doorY = houseY + houseHeight - doorHeight;
  
  // door
  fill(139, 69, 19);
  rect(doorX, doorY, doorWidth, doorHeight);
  
  float doorknobX = doorX + doorWidth * .2;
  float doorknobY = doorY + doorHeight * .5;
  float doorknobSize = houseWidth * .05;
  
  // doorknob
  fill(0);
  circle(doorknobX, doorknobY, doorknobSize);
}
