import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/welcome.dart';
import 'package:BlackJack/functions/deal_card.dart';

/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  Welcome();
  List<int> deck = ShuffledDeck();
  print(deck);
  print('_________________');

  List<int> playerHand = [];
  List<int> houseHand = [];
  int bankRoll =  BuyIn();
  while(bankRoll > 0){
    int bet = PlaceBet(bankRoll);
    InitialDeal(playerHand, houseHand, deck);
    Status(playerHand, houseHand);
    print('_______________');
    HitOrStay(playerHand, houseHand, deck);

    if(!CheckIfBusted(playerHand)){
      HousePlays(houseHand, deck);
    }

    bankRoll = CheckWinner(playerHand, houseHand, bankRoll, bet);
    //remove and return hands;
    ReturnHands(playerHand, houseHand, deck);
  }


}

