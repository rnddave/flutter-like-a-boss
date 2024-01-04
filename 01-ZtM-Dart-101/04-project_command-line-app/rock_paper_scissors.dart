import 'dart:io'; // needed for standard-in (stdin)
import 'dart:math'; // needed for the random number generator (Random)

enum Move { rock, paper, scissors }

void main() {
  // while true (loop)
  //  prompt user for input
  //  read user input
  //  if input is vaild (r, p, s) then
  //    Machine move at random
  //    Show Machine output
  //    Compare Machine vs User input
  //    Declare winner/Looser/Draw
  //  else if q
  //    then quit
  //  else
  //    invalid input

  final numGen = Random(); // will be part of the random number generator

  while (true) {
    // print('Rock, Paper, Scissors? (r/p/s): ') // print adds an extra line, we don't want it
    stdout.write('Rock, Paper, Scissors? (r/p/s): ');
    final input = stdin.readLineSync();

    if (input == 'r' || input == 's' || input == 'p') {
      var human; // initialised as Null
      if (input == 'r') {
        human = Move.rock;
      } else if (input == 'p') {
        human = Move.paper;
      } else {
        human = Move.scissors;
      }
      final random =
          numGen.nextInt(3); // this will pick random integer between 0-2
      var machine; // initialised as Null
      /*
      if (random == 0) {
        machine = Move.rock;
      } else if (random == 1) {
        machine = Move.paper;
      } else {
        machine = Move.scissors;
      }
      print('You selected $human, we selected $machine');
      */
      machine = Move.values[random];

      print('Your selection was $human and the machine selected $machine');

      if (human == machine) {
        print('It is a draw!');
      } else if (human == Move.rock && machine == Move.scissors ||
          human == Move.scissors && machine == Move.paper ||
          human == Move.paper && machine == Move.rock) {
        print('You win!');
      } else {
        print('Machine wins');
      }

/*       print('You selected $human');
      print('We moved $machine'); */

    } else if (input == 'q') {
      break;
    } else {
      print(
          'You typed >> $input << but needs to be "r", "p" or "s", please try again');
    }
  }
}
