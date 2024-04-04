void feetmap_draw(){
  pushStyle();
  background(255);
  fill(0);
  textSize(30);
  text("FEETMAP MODE", width/2- 20, 25);
  image(img,250, 40, 200, 500 );
  for (var i : fps){
    i.draw();
  }
  popStyle();
  

  
}
