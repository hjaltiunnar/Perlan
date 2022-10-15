import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/welcome.dart';
import 'package:BlackJack/functions/deal_card.dart';
/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  print('Perlan Casino');
  Welcome();
  List deck = DeckOfCards();
  print(deck);
  int myCard = DealCard (deck);
  print(myCard);

}

