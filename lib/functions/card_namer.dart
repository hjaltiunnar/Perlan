/*
Create a function called CardNamer.

When given an integer between 1-13,
it should return the name of the corresponding card (Ignore the suit)
 */

String CardNamer(int i){
  String str = 'Blackjack';
  if (i <= 10 && i != 1){
    str = i.toString();
    return (str);
  } else if (i == 1) {
    str = 'Ace';
    return ('Ace');
  } else if (i == 11) {
    str = 'Joker';
    return ('Joker');
  } else if (i == 12) {
    str = 'Queen';
    return ('Queen');
  } else if (i == 13) {
    str = 'King';
    return ('King');
  }

}
