public class Hand{
  private Card[] theHand = new Card[12];
  private int numberOfCards = 0;
  
   public int calculateTotal(){ //calculates the total of a hand (cards 11 through 13 have value of 10)
     int total = 0;
     for (int i = 0; i < numberOfCards; i++){
       int value = theHand[i].getCardNum();
       if (value > 10){
         value = 10;
       }
       total += value;
     }
     return total;
   }
   
   public void addCard(Card card){ //takes in a Card object and adds it to the hand
     theHand[numberOfCards++] = card;
   }
   public void clearHand(){ //clears the number of cards in a hand
     numberOfCards = 0;
   }
   
   public int getHandSize(){ //get method for numberOfCards instance variable
     return numberOfCards;
   }
}
