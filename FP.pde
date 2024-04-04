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
    
  }
}
