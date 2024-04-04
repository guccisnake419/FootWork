import g4p_controls.GButton;
import g4p_controls.*;
import gifAnimation.*;


String tab= "intro";
GButton BaselineMode;
GButton FeetMapMode;
GButton CreativeMode;
GButton BackButton;
Gif myAnimation;

PImage img;
ArrayList<fp> fps = new ArrayList<fp>();


void setup(){
  size(700, 700);
  background(255);
  img = loadImage("barefoot.png");
  BaselineMode= new GButton(this, width/2-70, 90, 100, 60, "BASELINE MODE");
  FeetMapMode= new GButton(this, width/2-70 , 150, 100, 60, "FEETMAP MODE");
  CreativeMode= new GButton(this,  width/2-70, 220, 100, 60, "CREATIVE MODE");
  BackButton= new GButton(this,  width/2-70, 900, 30, 30, "<");
   myAnimation = new Gif(this, "walking.gif");  
  myAnimation.play();
  fps.add(new fp(300, 150));
  fps.add(new fp(300, 210));
  fps.add(new fp(400, 210));
  fps.add(new fp(330, 450));

}
void draw(){
  
  BaselineMode.moveTo(900,900);  
  FeetMapMode.moveTo(900,900);  
  CreativeMode.moveTo(900,900);
  

  if (tab=="intro"){
    BackButton.moveTo(900, 900);
    start= millis();
    intro_draw();
  }
  else if (tab=="baseline"){
    BackButton.moveTo(30,10);
     baseline_draw();
  }
  else if (tab=="feetmap"){
    BackButton.moveTo(30,10);
     feetmap_draw();
  }
  else if (tab=="creative"){
    BackButton.moveTo(30,10);
    creative_draw();
  }
  else if (tab=="baselinedata"){
    BackButton.moveTo(30,10);
    baselinedata_draw();
  }
  
  
}
