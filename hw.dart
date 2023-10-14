import 'dart:io';

void main() {
  int lowerBound = 1;
  int upperBound = 100;
  int guess;
  int steps = 0;
  String? userInput;

  print("Загадайте число от 1 до 100.");

  do {
    steps++;
    guess = (lowerBound + upperBound) ~/ 2;
    print("Is it $guess?");
    userInput = stdin.readLineSync();

    if (userInput == "less") {
      upperBound = guess - 1;
    } else if (userInput == "greater") {
      lowerBound = guess + 1;
    }
  } while (userInput != "yes");

  print("Got it in $steps steps!");
}
