import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {

  print('Perlan');
  List deck = DeckOfCards();
  print(deck);
  List<int> shuffledDeck = Shuffler(deck);
  print(shuffledDeck);
  print('_________________');

  List<int> playerHand = [];
  //houseHand

  //InitialDeal();
  //Status();
}
