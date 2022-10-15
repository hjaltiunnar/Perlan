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

int PlaceBet(int bankRoll) {
  int sum = 0;
  bool active = true;
  while (active) {
    print("How much do you want to bet?");
    String InputNumber = stdin.readLineSync(
        encoding: Encoding.getByName("utf-8"));
    sum = int.tryParse(InputNumber);
    if (sum <= bankRoll) {
      sum = bankRoll - sum;
    } else {
      print("you have insufficient funds");
    }
    active = false;
  }
  return sum;
}

int BuyIn() {

  bool active = true;

  while (active) {
    print("How much do you want to buy in for? ");
    try {
      int buy = int.parse(stdin.readLineSync());
      print("You have bought in for: $buy");
      active = false;
      return buy;
    }
    on FormatException {
      print("Error! Input is not an integer! Try Again!");
    }
  }
}