class UserPosition{
  String position= "Idle";
  PImage position_pic= img2;
  String str= ".";
  long  start= 0;
  void draw(){
    if (millis()-start>=1000){
      if (str.length()<3){
        str+='.';
      }
      else {
        
        str=".";
      }
      start= millis();
    }
    fill(255, 255, 191);
    rect(350, 90, 300, 400);
    fill(0);
    text("User position", 400, 70);
    image(position_pic, 400,120, 200, 200 );
    fill(color(255,0, 0));
    text("Calculating"+ str,500, 380 );
    fill(color(0, 0, 255));
    text("Status: "+position, 500, 430 );
  }
  
}
