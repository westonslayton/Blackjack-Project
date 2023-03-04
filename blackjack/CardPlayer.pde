public class CardPlayer extends Actor{
  int numOfCards;
  private Hand hand;
  
  public void act(float deltaTime){ //act method required for actors
  
  }
  
  public CardPlayer(int x, int y, int w, int h){ //CardPlayer constructor that takes in 4 arguments that become the base coordinates
    super(x,y,w,h); 
    hand = new Hand(); //creates an empty hand for the player
  }
  
  public Hand getHand(){ //get method for the player's hand
    return hand;
  }
  
  public int getTotal(){ //returns the player's hand's total value
    return hand.calculateTotal();
  }
  
  public void addCard(Card card){ //takes in a Card object and adds it to the player's hand
    hand.addCard(card);
  }
  
  public void clearHand(){ //clears a player's hand
    hand.clearHand();
  }
  
  public void draw() { //displays the player's hand's total as text
    textSize(30);
    fill(0,0,0);
    text(getTotal(), 0, 0);
  }

}

 public class Dealer extends CardPlayer{  //dealer class
   private Hand hand = new Hand(); //creates the dealer's empty hand
   
   public Dealer() { //dealer constructor that sets the base coordinates (using parent constructor) that will be used for getTotal() text
     super(300,220,50,50);
   }
   
    public void draw() { //if the dealer has over 21, display "dealer busts, you win"
    super.draw();
    if (getTotal() > 21){
      textSize(30);
      fill(0,0,0);
      text("Dealer busts, you win", 50, 50);
    } 
  }
   
}

  public class Player extends CardPlayer{ //player class
    int numOfCards;
    private Hand hand;
    
    public Player() { //player constructor that sets its base coordinates using parent constructor - used for hand total text
     super(200,520,0,0);
   }
   
   public void draw() { //if the player has over 21, displays "you bust, dealer wins"
    super.draw();
    if (getTotal() > 21){
      textSize(30);
      fill(0,0,0);
      text("You bust, dealer wins", 50, 50);
    }
  }
   

       
}
