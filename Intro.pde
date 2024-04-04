void intro_draw(){
  background(255);
  fill(0);
  textSize(32);
  textAlign(CENTER);

  text("Happy Feet", width/2-30, 30);
  textSize(20);
  text("MODES", width/2-30, 70);
  BaselineMode.moveTo(width/2-70, 90);  
  FeetMapMode.moveTo(width/2-70, 160);  
  CreativeMode.moveTo(width/2-70, 230);
}
