import 'dart:io';

double nullEscapeAndConvertToDouble() {
  String? number;
  double? parsedNumber;

  while (parsedNumber == null) {
    print("Please enter a valid number: ");
    number = stdin.readLineSync();

    if (number != null) {
      parsedNumber = double.tryParse(number);
    }

    if (parsedNumber == null) {
      print("Invalid option");
    }
  }

  return parsedNumber;
}

int nullEscapeAndConvertToInt() {
  String? number;
  int? parsedNumber;

  while (parsedNumber == null) {
    print("Please enter a valid number: ");
    number = stdin.readLineSync();

    if (number != null) {
      parsedNumber = int.tryParse(number);
    }

    if (parsedNumber == null) {
      print("Invalid option");
    }
  }

  return parsedNumber;
}