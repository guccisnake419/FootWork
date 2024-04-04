long interval = 2000;
long start= 0;
void baseline_draw(){
  pushStyle();
  background(255);
  fill(0);
  textSize(30);
  textAlign(CENTER);

  text("BASELINE MODE", width/2- 20, 25);
  image(myAnimation,125, 100, 400, 400);

  if(millis()-start<=interval){
    text("Calculating Baseline Data", width/2, 90);
    text("Walk around at your regular pace for 2 minutes", width/2, 120);
  }
  else{
    start=millis();
    tab= "baselinedata";
  }
  popStyle();
  
}
