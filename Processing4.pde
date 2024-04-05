import g4p_controls.GButton;
import g4p_controls.*;
import gifAnimation.*;
import processing.serial.*;
import java.util.regex.Pattern;


String tab= "intro";
GButton BaselineMode;
GButton FeetMapMode;
GButton CreativeMode;
GButton BackButton;
Gif myAnimation;

PImage img;
PImage img2;//idle
PImage img3;//walking
ArrayList<fp> fps = new ArrayList<fp>();
UserPosition userp;
Serial myPort;


void setup(){
  size(700, 700);
  background(255);
  img = loadImage("barefoot.png");
  img2= loadImage("idle.png");
  img3= loadImage("runningman2.png");
  BaselineMode= new GButton(this, 20, 90, 100, 60, "BASELINE MODE");
  FeetMapMode= new GButton(this, width/2-70 , 150, 100, 60, "FEETMAP MODE");
  CreativeMode= new GButton(this,  580, 220, 100, 60, "CREATIVE MODE");
  BackButton= new GButton(this,  width/2-70, 900, 30, 30, "<");
   myAnimation = new Gif(this, "walking.gif");  
  myAnimation.play();
  fps.add(new fp(300, 150));
  fps.add(new fp(300, 210));
  fps.add(new fp(400, 210));
  fps.add(new fp(330, 450));
  myPort = new Serial(this,Serial.list()[2],9600);
  myPort.bufferUntil('\n');
  userp=new  UserPosition();
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
void serialEvent(Serial myPort){
  String tempval = myPort.readStringUntil('\n');
  tempval= tempval.trim();
  if (Pattern.matches("*, *, *, *",tempval)){//fsr values are being sent in 
    String arr []= tempval.split(",", 4);
    for (int i=0; i<4; i++){
      fps.get(i).setValue(Integer.parseInt(arr[i]));
    }
    //use for other purpose
  }
  else if (Pattern.matches("*, *, *, *, *, *", tempval)){//gyroscope values are being sent in
    //String arr[]= tempval.split(",", 6);
    //use
  }
  
}
