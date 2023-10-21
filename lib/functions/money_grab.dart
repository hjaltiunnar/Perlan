import 'dart:convert';
import 'dart:io';

/*
Create two functions called

PlaceBet(int currentBank)
- Asks the user how much they want to bet this round, return the amount.
- Solve edge cases when the bet is larger than current bank or if
the user chooses to bet 0.

BuyIn
- Ask the user for how much they want to buy in to black jack

These methods should return an integer.

BONUS POINTS:
Can you design the function such that it will ask the user again if
he doesn't input a integer?
 */


int? betLogic(int bankRoll){
  int amount = 0;
  try {
  amount = int.tryParse(stdin.readLineSync()!) !- 0;
  } catch (e){
    print("You have to input a number!");
    betLogic(bankRoll);
  }
  if (amount > bankRoll){
    print("You can't bet higher than the bankroll, that's currently $bankRoll");
    betLogic(bankRoll);
  } else if (amount == 0) {
    print("You can't bet 0! Try again.");
    betLogic(bankRoll);
    } else {
      print(amount);
    return amount;
  }
}

int? PlaceBet(int bankRoll) {
  print("Give me an amount you want to bet");
  betLogic(bankRoll);
}

int? BuyIn(int bankRoll) {
  print("How large is your buy in?");
  betLogic(bankRoll);
}
