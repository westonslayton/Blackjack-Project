// A World is where the Actors are able to interact with one-another.
// For most games, you will only need one World.
import java.util.List;
class MainWorld extends World
{
  Player player = new Player(); //creates Player, Dealer, and Deck objects
  Dealer dealer = new Dealer();
  Deck deck = new Deck();
  // Construct the world at the start of the program (run once)
  public MainWorld(int w, int h)
  {
  
  }
  // Run once when the world is loaded
  // World positions are measured in pixels from the top left to the bottom right
  public void prepare() //adds player and dealer objects to world, gives 2 random cards to player and 1 to dealer, adding them to their hands
  {
    addObject(player);
    addObject(dealer);
    
    Card card1 = deck.nextCard();
    player.addCard(card1);
    addObject(card1);
    Card card2 = deck.nextCard();
    player.addCard(card2);
    card2.setLocation(290,400);
    addObject(card2);
    
    Card card3 = deck.nextCard();
    dealer.addCard(card3);
    card3.setLocation(350,100);
    addObject(card3);
    

  }
  // Run every frame - this is where you might do things that aren't tied to a specific Actor, like handling scores
  public void act(float deltaTime)
  {
      if (green.isKeyDownThisFrame('h') && player.getTotal()< 21){ 
        { //if the h key is pressed and player has below 21, add a random card to their hand
        Card newCard = deck.nextCard();
        player.addCard(newCard);
        newCard.setLocation(200 + (player.getHand().getHandSize()-1) * 90,400);
        addObject(newCard);
        }
      }
      
      if(green.isKeyDownThisFrame('s') && player.getTotal() <= 21 || player.getTotal() == 21){
        //if the s button is pressed while total < 21, or the player has 21, let dealer play out his hand according to rules
       for(int i = 0; i < 10; i++){
         if(dealer.getTotal() <= 16){
          Card newCard = deck.nextCard();
          dealer.addCard(newCard);
          newCard.setLocation(440 + (90 * i),100);
          addObject(newCard);
          }
        }
      } 
  }
}
