import 'dart:io';
import 'dart:math';

void main() {
  diceGame();
}

void diceGame() {
  String? answer1, answer2;
  int diceOne, diceTwo, max = 6, min = 1;

  stdout.write("Welcome to the dice game! Do you want to roll a dice? (y/n) ");
  answer1 = stdin.readLineSync();

  while (answer1 != "y" && answer1 != "n") {
    stdout.write("Error!! please press (y/n) ");
    answer1 = stdin.readLineSync();
  }

  if (answer1 == "n") {
    print("Goodbye!");
    exit(0);
  } else if (answer1 == "y") {
    diceOne = min + Random().nextInt((max + 1) - min);
    diceTwo = min + Random().nextInt((max + 1) - min);

    int diceTotal = diceOne + diceTwo;

    print("You rolled: $diceOne, $diceTwo");
    print("Total: $diceTotal");

    stdout.write("Would you like to roll the dice again? (y/n) ");
    answer2 = stdin.readLineSync();

    if (answer2 == "y") {
      diceGame();
    } else if (answer2 == "n") {
      print("Goodbye!");
      exit(0);
    }
    while (answer2 != "y" && answer2 != "n") {
      stdout.write("Error!! please press (y/n) ");

      answer2 = stdin.readLineSync();
    }
  }
}
