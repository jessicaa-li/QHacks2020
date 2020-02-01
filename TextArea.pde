import controlP5.*;

public class textArea {
  private String text = "";
  private int xPos, yPos;
  final int BUT_SIZE_X = 125, BUT_SIZE_Y = 50;
  ControlP5 cp5;
  
  public textArea(String inputText, int inputX, int inputY) {
    text=inputText;
    xPos=inputX;
    yPos=inputY;
    createArea();
  }
  
  public Button(int inputX, int inputY, color colour) {
    xPos = inputX;
    yPos = inputY;
    this.colour = colour;
    createButton();
  }
  
  private void createArea() {
    fill(colour);
    rect(xPos, yPos, BUT_SIZE_X, BUT_SIZE_Y, 12);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(BUT_SIZE_Y/3);
    text(name, (BUT_SIZE_X/2)+xPos, (BUT_SIZE_Y/2)+yPos);
  }
  
  public void setText(String inputName) {
    name=inputName;
    createButton();
  }
  
  public int getX() {
    return xPos;
  }

  public int getY() {
    return yPos;
  }

  public void update(int newPos) {
    xPos=newPos;
    createButton();
  }
  
  public boolean isOver() {
    return (mouseX>xPos) && (mouseX<xPos+BUT_SIZE_X) && (mouseY>yPos) && (mouseY<yPos+BUT_SIZE_Y);
  }
}
