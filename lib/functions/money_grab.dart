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


int getInteger(){
  int number = 0;
  try {
  number = int.tryParse(stdin.readLineSync()!) !- 0;
  } catch (e){
    print("You have to input a number!");
    getInteger();
  }
  return number;
}

int PlaceBet(int bankRoll) {
  if (bankRoll == 0){
    print("Error: no available funds.");
    BuyIn();
  }
  print("Give me an amount you want to bet");
  int amount = getInteger();
    if (amount > bankRoll){
    print("You only have $bankRoll to play with! Pick a lower number.");
    PlaceBet(bankRoll);
    return amount;
  } else if (amount == 0) {
    print("You can't bet 0! Try again.");
    PlaceBet(bankRoll);
    return amount;
    } else {
    return amount;
  }
}

int BuyIn() {
  print("How large is your buy in?");
  int amount = getInteger();
  return amount;
}
