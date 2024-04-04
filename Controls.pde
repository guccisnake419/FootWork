//receive input from buttons and changes scene
public void handleButtonEvents(GButton button, GEvent event) {
  if(button == BaselineMode && event == GEvent.CLICKED){
    tab= "baseline";
    
  }
  else if(button == FeetMapMode && event == GEvent.CLICKED){
    tab= "feetmap";
    
    
  }
  else if(button == CreativeMode && event == GEvent.CLICKED){
    
    tab="creative";
  }
  else if(button== BackButton && event == GEvent.CLICKED){
    tab= "intro";
  }
  
  
  
}
