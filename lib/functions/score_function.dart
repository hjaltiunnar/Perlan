/*
Create a function called CalculateScore that can calculate the score of a given hand of cards.
The score is blackjack score, so the following rules apply

An ace can either be 1 or 11
10, Jack, Queen and King count as 10

For this score function, we will do it a bit differently than real life.

If a card is an Ace, it's AUTOMATICALLY an 11. Any ace that comes after that
gets the score 1. So if the method gets the hand [1, 1] the score would be 12

  Here are few test cases to test your method against

  hand = [1, 1] -> Score 12
  hand = [13, 1] -> Score 21
  hand = [1, 13, 1] -> Score 22
  hand = [1, 1, 1, 1] -> Score 14
  hand = [11, 13] -> Score 20
  hand = [7, 1] -> Score 18
  */

int? CalculateScore(List<int> hand){
  int sum = 0;
  bool checkIfAce = false;
  for (int number in hand) {
    if (number == 1 && checkIfAce == false){
      checkIfAce = true;
      sum += 11;
    } else if (number == 1 && checkIfAce == true) {
      sum += 1;
    } else if(number >= 2 && number <= 10) {
      sum += number;
    } else if (number >= 11 && number <= 13){
      sum += 10;
    }
  }
  print('sum: $sum');
  return sum;
}

