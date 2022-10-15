/*
Create a function called DeckOfCards that returns a brand new deck of cards.

The deck should consists of List of integers, where each card is assigned
a number from 1-13, so essentially you will the number 1 four times,
the number 2 four times etc...

Make this function return the List of integers.
 */

List<int> DeckOfCards() {
  List <int> cards = [];
  List<int> Deck = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<String> suits = ["Spaði", "Tígul", "Hjarta", "Lauf"];

  for (int i = 1; i < suits.length + 1; i++) {
    for (int i = 1; i < Deck.length + 1; i++) {
      cards.add(i);
    }
  }
  return cards;
}



