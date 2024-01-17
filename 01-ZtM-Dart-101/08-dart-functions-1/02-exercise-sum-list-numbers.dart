/*

Exercise: Sum of a list of numbers

Write a function called sum that takes a list of values as an argument 
(List<double>), and returns the sum of all the values.

Then, call the function multiple times with different input values 
(example: [], [1, 2], [1, 2, 3, 4]) and print the result.

*/


void main () {
  print(sum([]));
  print(sum([1,2]));
  print(sum([1,2,3,4]));

/*
0.0
3.0
10.0
*/
}

double sum(List<double> values) {   // didn't know this values needed to be there

  var sumOf = 0.0;

  for (var item in values) {
    sumOf = item + sumOf;
  }

  return sumOf;
}