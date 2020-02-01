public static int currency;

Button menu[] = new Button[4];
Bar bar;
int screen = 0;
PFont font;
final color BACKGROUND = #05AC72;
final color BUTTON = #0AD4BB;
final color BAR = #056644;

void setup() {
  size(700, 700);
  surface.setResizable(true);
  surface.setTitle("Vibe Checker");
  font = loadFont("font.vlw");

  for (int i=0; i<4; i++) 
  {
    menu[i] = new Button(i*width/4+25, 50, #5BC654);
  }
  
  menu[0].setText("Home\nScreen");
  menu[1].setText("Journal");
  menu[2].setText("Tracker");
  menu[3].setText("Collection");
  
  //
  bar = new Bar("Barrett", "MENU", 0, BAR);
}


void draw() 
{
  background(BACKGROUND);
  textFont(font);
  
  for (int i=0; i<4; i++) 
  {
    menu[i].update(i*width/4+25);
  }
  
  if(menu[0].isOver()||menu[1].isOver()||menu[2].isOver()||menu[3].isOver())
  {
    cursor(HAND);
  }
  else
  {
    cursor(ARROW);
     //THERE'S GOTTA BE A BETTER WAY MENU BAR??
  }
  if(screen==1)
  {
    text("HELLO THIS IS SCREEN 1",350,350);   
  }
  
  bar.display();


}
void mousePressed() {
  if(menu[0].isOver()){
  screen=0;
  println("Home Screen has been pressed");
  bar.setTitle("MENU");
  }else if(menu[1].isOver()){
    screen=1;
    println("Journal has been pressed"); 
    bar.setTitle("JOURNAL");
  }else if(menu[2].isOver()){
    screen=2;
    println("Tracker has been pressed");
    bar.setTitle("TRACKER");
  }else if(menu[3].isOver()){
    screen=3;
    println("Collection has been pressed");
    bar.setTitle("COLLECTION");
  }
}
