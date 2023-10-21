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

// TEST MAIN FUNCTION
void main(){
  int bankRoll = 1000;

  PlaceBet(bankRoll);

  BuyIn();
}

int? PlaceBet(int bankRoll) {
  int amount;
  print("Give me an amount you want to bet");
  amount = int.parse(stdin.readLineSync().toString());
  if (amount is int) {
  if (amount > bankRoll || amount == 0){
    print("Your bet is either zero or larger than the bankroll");
    PlaceBet(bankRoll);
  } else {
    print(amount); // delete
    return amount;
  }
  } else {
    print("That is not an integer");
    PlaceBet(bankRoll);
  }

}

int? BuyIn() {
  int amount;
  print("How large is your buy in?");
  amount = int.parse(stdin.readLineSync().toString());
  print(amount);
  return amount;
}
