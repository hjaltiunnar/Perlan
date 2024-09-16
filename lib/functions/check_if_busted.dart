import 'package:BlackJack/functions/draw_card.dart';

import 'score_function.dart';

/*
Create a function called CheckIfBusted.

This function should accept a List
of integers (hand of cards) calculate the score, and return true if busted
ie. score is above 21, and false if not busted.

NOTE: You can work on this function before "Score function" is completed,
just make sure to merge them once you are done.

Example inputs

[10 11 1] -> False
[13 13 7] -> True
[1 1 2] -> True
...ie use output of score function and check if busted.

if ... true eða false, return true eða false
 */

bool CheckIfBusted(List<int> hand){
  int? sumOfCards = CalculateScore(hand);
  if(sumOfCards! > 21){
    return true;
  }
  return false;
}