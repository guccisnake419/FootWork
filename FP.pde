class fp{
  int x;
  int y;
  color col;
  float value;
  int size;
  fp(int x, int y){
    this.x= x;
    this.y= y;
    size= 30;
    col= color(0, 0, 255);
  }
  
  void draw(){
    fill(col);
    circle(x, y, 30);
  }
  void setValue(int value){
    this.value= value;
    //change color depending on value right after
    //fsr vales go from 0 to 1023
      if (value < 10) {
        col= color(0, 0, 255); //blue 
      } else if (value < 200) {
        col= color(0, 255, 255);
      } else if (value < 500) {
        col= color(0, 255, 0); //green
      } else if (value < 800) {
        col=color(255, 255, 0);//yellow
      } else {
         col= color(255, 0, 0);//red
      }
  }
}
