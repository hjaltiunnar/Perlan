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

int? CheckWinner(List<int> playerHand, List<int> houseHand, int currentBankRoll, int currentBet){

  int? playerScore = CalculateScore(playerHand);
  int? houseScore = CalculateScore(houseHand);

  if(CheckIfBusted(houseHand)){
    // WIN
    currentBankRoll += currentBet;
  } else  {
    if ( playerScore! > houseScore! && CheckIfBusted(playerHand) == false) {
      // Win
      currentBankRoll += currentBet;
      print("You Win!");
    } else {
      currentBankRoll -= currentBet;
      print("You Lose!");
    }
  }
  ShowAllCards(playerHand, houseHand);
  return currentBankRoll;
}
