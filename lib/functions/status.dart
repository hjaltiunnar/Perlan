import 'score_function.dart';
import 'card_namer.dart';

/*
Create a function that prints the current "Status" of the match,
called ... uh... Status! Yes! That's it!

The function should take in two lists of integers, the playerHand and houseHand.

Using the score function and CardNamer, print info that informs the user
on what hand he has, his score and the hand of the house.

(Check out blackjack rules on what we actually get to know from the house
hand before showdown.)

 */
List CardNameList(List playerHand){
  List<String> output = [];
  for(var card in playerHand){
    output.add(CardNamer(card)!);
  }
  return output;
}

void Status(List<int> playerHand, List<int> houseHand){
  print("Here is your hand:");
  print(CardNameList(playerHand));
  print("Here is the dealers hand:");
  print(CardNamer(houseHand[0]));
}

void ShowAllCards(List<int> playerHand, List<int> houseHand){
  print("Here is your hand:");
  print(CardNameList(playerHand));
  print("Here is the dealers hand:");
  print(CardNameList(houseHand));
}
