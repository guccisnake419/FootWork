class UserPosition{
  String position= "Idle";
  PImage position_pic= img2;
  void draw(){
    fill(255, 255, 191);
    rect(350, 90, 300, 400);
    fill(0);
    text("User position", 400, 70);
    image(position_pic, 400,120, 200, 200 );
    fill(color(255,0, 0));
    text("Calculating", );
    text(position, 500, 430 );
  }
  
}
