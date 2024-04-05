void intro_draw(){
  background(255);
  fill(0);
  textSize(32);
  textAlign(CENTER);

  text("Happy Feet", width/2-30, 30);
  textSize(20);
  text("MODES", 50, 70);
  BaselineMode.moveTo(20, 90);  
  FeetMapMode.moveTo(20, 160);  
  CreativeMode.moveTo(20, 230);
  
  //section section of the screen for gyro data
  userp.draw();
}
