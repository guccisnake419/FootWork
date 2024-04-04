void baselinedata_draw(){
  pushStyle();
  background(255);
  fill(0);
  textSize(20);
  fill(255, 0, 0); // Red 
  rect(50, 85, width - 100, 40);
  fill(255, 165, 0); // Orange
  rect(50, 130, width - 100, 40);
  fill(255, 255, 0); // Yellow 
  rect(50, 175, width - 100, 40);
  fill(0, 255, 0); // Green
  rect(50, 220, width - 100, 40);
  fill(0);
  text("Step length = ", width/2- 20, 115);
  text("Stride length = ", width/2- 20, 155);
  text("Cadence length = ", width/2- 20, 200);
  text("Step Count length = ", width/2- 20, 245);

  popStyle();
  
}
