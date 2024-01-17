// side effects kill good programs.

var counter =
    1; // this is a mutable global variable (this is the root cause for what we see below)

void foo() {
  print('*\t' * counter);
  counter++;
}

void main() {
  foo();  //  *
  foo();  //  * *

  counter++;
  foo();  //  * * * *
  counter++;
  counter++;
  foo();  // *  * * * * *  *
}


// the problem with this is every time we call this function, the output is different
// therefore it is not predictable (it has a side effect)
// it is NOT a PURE FUNCTION


// a PURE function ALWAYS produces the same result when called with the SAME ARGUMENTS


// global variables are not bad - but mutable global variables is something we should avoid whenever possible