// suppose we want a function that can accept arguments optionally but have some defaults lined up if that does happen...

void main() {
  foo(1); // only passing 1 argument, so the optional argument will be filled with default value
  foo(2, 4); // passign both the required and the optional argument

  // the sum of variable 1 * 2 = 2
  // the sum of variable 2 * 4 = 8

  foobar(1);
  foobar(2, b: 4); // this is now using named optional arguments
  foobar(2, c: 6); // this is now using named optional arguments
  foobar(3, b: 8, c: 5); // this is now using named optional arguments
  foobar(3, c: 6, b: 7); // this is now using named optional arguments

/*
the sum of variable 1 * 2 * 3 = 6
the sum of variable 2 * 4 * 3 = 24
the sum of variable 2 * 2 * 6 = 24
the sum of variable 3 * 8 * 5 = 120
the sum of variable 3 * 7 * 6 = 126
*/
}

void foo(int a, [int b = 2]) {
  print('the sum of variable $a * $b = ${a * b}');
}

void foobar(int a, {int b = 2, int c = 3}) {
  print('the sum of variable $a * $b * $c = ${a * b * c}');
}
