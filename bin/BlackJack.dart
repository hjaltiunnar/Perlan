import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/welcome.dart';
import 'package:BlackJack/functions/deal_card.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  Welcome();

  //CardNamer(13);

  List deck = DeckOfCards();
  print(deck);
  List<int> shuffledDeck = Shuffler(deck);
  print(shuffledDeck);
  print('_________________');

  List<int> playerHand = [];
  //houseHand


  //InitialDeal();
  //Status();


  CheckIfBusted([3,5]);
  CardNamer(13);

}

