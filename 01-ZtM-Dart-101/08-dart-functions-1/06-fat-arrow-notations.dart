void main() {
  print(getAnswer(59, 74)); // 4366
  whatMath(74, 59); // the answer is 4366
}

int getAnswer(int x, int y) => x * y;

/* vs the normal notation for a function: 

int getAnswer(int x, int y) {
  return x * y;
}

*/

// only really works for functions that have a single statement

// it doesn't matter if you are returning or not:
// it is about the number of statements that exist within

void whatMath(int x, int y) => print(' the answer is ${x * y}');
