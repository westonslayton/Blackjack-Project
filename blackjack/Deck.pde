import java.util.Random;
public class Deck {

  Card[] deck = new Card[416]; //creates an empty deck of type Card with length 416

  public Deck(){ //deck constructor that creates 32 groups of values 1-13 and adds them to the deck - values given names in card class
    int count = 0;
    for (int z = 1; z <= 32; z++){
    for (int i = 1; i <= 13; i++){
       deck[count++] = new Card(i);
    }
   }
}
  public Card getCard(int index){ //gets a Card from the deck given an integer arguent that represents index
      return deck[index];
}
  public Card nextCard(){ //gets a random card from the deck and returns it
    int nextCardIndex = (int)(Math.random()*(416));
    return deck[nextCardIndex];
  }
}
