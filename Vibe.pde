/**
  Class for the vibe object.
  
   @author 
   @version Feb 1st, 2020
``**/

public class Vibe {
  private String name;
  private PImage image;
  private char rarity;
  private int rating;

  public Vibe(String vibeName, PImage vibeImage, char vibeRarity, int vibeRating) {
    name = vibeName;
    image = vibeImage;
    rarity = vibeRarity;
    rating = vibeRating;
  }
  public String getName() {
    return name;
  }
  public PImage getImage() {
    return image;
  }
  public char getRarity() {
    return rarity;
  }
  public int getRating() {
    return rating;
  }
  
}
