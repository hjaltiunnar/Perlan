import 'shuffler.dart';
import 'deck_of_cards.dart';
/*
Create a function called ShuffledDeck that uses the methods from

A new deck of cards
Shuffler
And when run, returns a shuffled deck of cards. No inputs, only output.
 */

List<int> ShuffledDeck(){
  List<int> _shuffledDeck = Shuffler(DeckOfCards())!;

  print("A deck of cards has been shuffled");
  //print('Log - shuffled-deck: ${_shuffledDeck}');
  return _shuffledDeck;
}