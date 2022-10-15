/*
Create a function called CardNamer.

When given an integer between 1-13,
it should return the name of the corresponding card (Ignore the suit)
 */

String CardNamer(int i){
  String str = '';
  if(i <= 10 && i != 1){
    str = i.toString();
    print(str);
    return str;
  }else if(i == 1){
    str = 'As';
    print('As');
    return 'as';
  }
  else if(i == 11){
    str = 'Gosi';
    print(str);
    return str;
  }
}