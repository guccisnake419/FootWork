long interval = 2000;
long start= 0;
ArrayList<int []> baseline_data= new ArrayList();
int max_threshold=800;
int min_threshold= 400;
int step_count= 0;
Boolean max_step_recorded= false;
Boolean min_step_recorded= false;
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
    process_baselineData();
    tab= "baselinedata";
  }
  popStyle();
  
}
void process_baselineData(){
  
  ArrayList<int []> temp = (ArrayList<int []>)baseline_data.clone();
  baseline_data.clear();
  
  for (var i: temp){
    int max_count= 0;
    int min_count= 0;
    for (var j : i){
      if(j> max_threshold){
        max_count+=1;
      }
      else if(j< min_threshold){
        min_count-=1;
      }
    }
    if (max_count > 2){
      if(max_step_recorded==false){
        step_count+=1;
        max_step_recorded=true;
      }
    }
    else if (min_count>2){
      if (max_step_recorded==true){
        max_step_recorded= false;
      }
    }
  }
  
}
