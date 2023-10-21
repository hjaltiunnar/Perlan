import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/welcome.dart';
import 'package:BlackJack/functions/deal_card.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  Welcome();
  int? bankRoll = BuyIn();
  while(bankRoll! > 0) {
    List<int>?deck = ShuffledDeck();
    List<int>?playerHand = [];
    List<int>?houseHand = [];
    InitialDeal(playerHand, houseHand, deck);
    int? bet = PlaceBet(bankRoll);
    DealCard(deck);
    HitOrStay(playerHand, houseHand, deck);
    if (CheckIfBusted(playerHand) == true) {
      CheckWinner(playerHand, houseHand, bankRoll, bet);
    } else {
      HousePlays(houseHand, deck);
    }
    // Status(playerHand, houseHand);
    bankRoll = CheckWinner(playerHand, houseHand, bankRoll, bet);
    print(bankRoll);
  }
}

