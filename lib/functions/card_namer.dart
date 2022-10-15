/*
Create a function called CardNamer.

When given an integer between 1-13,
it should return the name of the corresponding card (Ignore the suit)
 */

String CardNamer(int i){
  String str = 'Blackjack';
  if (i <= 10 && i != 1){
    str = i.toString();
    print(str);
    return (str);
  } else if (i == 1) {
    str = 'Ace';
    print ('Ace');
    return ('Ace');
  } else if (i == 11) {
    str = 'Joker';
    print(str);
    return ('Joker');
  } else if (i == 12) {
    str = 'Queen';
    print(str);
    return ('Queen');
  } else if (i == 13) {
    str = 'King';
    print(str);
    return ('King');
  }

}
