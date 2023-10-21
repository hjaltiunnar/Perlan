import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/welcome.dart';
import 'package:BlackJack/functions/deal_card.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  Welcome();
  int bankRoll = 1000;
  List<int>?deck = ShuffledDeck();
  List<int>?playerHand = [];
  List<int>?houseHand = [];
  InitialDeal(playerHand, houseHand, deck);
  BuyIn(bankRoll);
  PlaceBet(bankRoll);



}

