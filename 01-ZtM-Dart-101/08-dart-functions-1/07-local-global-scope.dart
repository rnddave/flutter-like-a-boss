// lexical scope

// this variable exists outside any function or the main()
// therefore this one is GLOBAL and can be access throughout the program
const c = 6;

void main() {
  // scope = inside the curly brackets
  // so inside here, this is a parent for any If's For's etc

  const a = 5;
  print('I am outside the IF statement \n');
  print('Global Variable = "c" $c');
  print('local (to me) Variable = "a" $a');

  if (a > 4) {
    print('\nI am INSIDE the If statement');

    print('Global Variable = "c" $c');
    print('My parents Variable = "a" $a');

    const b = c * a;
    print(
        '"b" = $b is a local (to me) variable, so I can access it here as well');
    print('the "b" variable is local (to me), it is the sum of (a * c) = $b');
  }

  print('\nI am outside the IF statement again');
  print(
      'I can still access the PARENT scope variable "a" = $a and the global scope variable "c" = $c, but cannot access the "b" variable inside the IF statement');
}

/*
I am outside the IF statement 

Global Variable = "c" 6
local (to me) Variable = "a" 5

I am INSIDE the If statement
Global Variable = "c" 6
My parents Variable = "a" 5
"b" = 30 is a local (to me) variable, so I can access it here as well
the "b" variable is local (to me), it is the sum of (a * c) = 30

I am outside the IF statement again
I can still access the PARENT scope variable "a" = 5 and the global scope 
  variable "c" = 6, but cannot access the "b" variable inside the IF statement
*/
