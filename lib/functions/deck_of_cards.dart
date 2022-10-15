/*
Create a function called DeckOfCards that returns a brand new deck of cards.

The deck should consists of List of integers, where each card is assigned
a number from 1-13, so essentially you will the number 1 four times,
the number 2 four times etc...

Make this function return the List of integers.
 */

List<int> DeckOfCards(){
  List<int> Deck = new List();

  for(int card = 1;card <= 4; card++) {
    for(int sort = 1; sort <= 13; sort++){
      Deck.add(sort);
    }
  }
  return Deck;
}


