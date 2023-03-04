public class Card extends Actor{
  
  private int cardNum;
  private String cardName;
  
 
  public Card(int num){ //creates the Card constructor that takes in an int and gives the card that number
    super(200, 400, 40, 40); //makes the card appear at 200,400 with dimenstions 40x40
    cardNum = num;
    if (num == 1) {    //give the card it's corresponding name to display on the screen
      cardName = "A";
    }
    else if (num == 2) {
      cardName = "2";
    }
    else if (num == 3) {
      cardName = "3";
    }
    else if (num == 4) {
      cardName = "4";
    }
    else if (num == 5) {
      cardName = "5";
    }
    else if (num == 6) {
      cardName = "6";
    }
    else if (num == 7) {
      cardName = "7";
    }
    else if (num == 8) {
      cardName = "8";
    }
    else if (num == 9) {

      cardName = "9";
    }
    else if (num == 10) {
      cardName = "10";
    }
    else if (num == 11) {
      cardName = "J";
    }
    else if (num == 12) {

      cardName = "Q";
    }
    else if (num == 13) {

      cardName = "K";

    } 
  }
  
  
  public void act(float deltaTime){ //act method required for all actors
 
  }
  

  
  
  public int getCardNum(){ //get method for cardNum instance variable
     return cardNum;
  }
  
  public String getCardName(){ //get method for cardName instance variable
    return cardName;
  }
  
   public void draw() { //draws the card based on the original coordinates and puts the cardName on top
    super.draw();
    rect(-50, -75, 100, 150);
    textSize(30);
    fill(0,0,0);
    text(cardName, -20, 0); //0, 0 draws it on the Actor directly
  }
}
