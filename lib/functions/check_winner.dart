/*
Create a function that takes in FOUR inputs.

houseHand which is list of integers
playerHand which is a list of integers
currentBet which is an integer
currentBankRoll which is an integer

Google the rules of black jack and calculate if house or player won the match.
Subtract / Add bets where applicable and return the updated currentBankRoll
of the user, which should have decreased/increased based on if he won or not.
 */



import 'package:BlackJack/functions/functions.dart';

int CheckWinner(List<int> playerHand, List<int> houseHand, int currentBankRoll, int currentBet){
  int win = currentBet * 2;
  if(CalculateScore(houseHand) > 21) {
    print("Dealer BUSTS! You WIN!!");
    currentBankRoll += win;
  } else if(CalculateScore(playerHand) == 21) {
    print("You got Blackjack you WIN");
    currentBankRoll += win;
  } else if(CalculateScore(houseHand) > CalculateScore(playerHand)) {
    print("Dealer Wins");
    currentBankRoll -= currentBet;
  } else if(CalculateScore(houseHand) < CalculateScore(playerHand)){
    print("You WIN!!!");
    currentBankRoll += win;
  } else {
    print("its a tie");
    currentBankRoll += currentBet;
  }
  return currentBankRoll;
}