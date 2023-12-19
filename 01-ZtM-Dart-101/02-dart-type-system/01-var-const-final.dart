// need to work out which is a Var, Const, Final

void main() {
  String text = 'I like pizza';
  String topping = 'with tomatoes';
  String favourite = '$text $topping';
  String newText = favourite.replaceAll('pizza', 'pasta');
  favourite = 'Now I like curry';
  print(newText);
}

// Remember: prefer const over final over var.

/*

variables store references 

var = can be changed at any time (but therefore we might not knot what it is at any particular time as well)

const & final = never intend to change the variable

final = a variable that can be set only once 

const = a variable that is set at compile time (const is an implicit final)

--------

>> final name = 'Bob'; // Without a type annotation
>> final String nickname = 'Bobby';

You can’t change the value of a final variable:

>> name = 'Alice'; // Error: a final variable can only be set once.

--------

When you declare the variable, set the value to a compile-time constant such as a number or string literal, a const variable, or the result of an arithmetic operation on constant numbers:

>> const bar = 1000000; // Unit of pressure (dynes/cm2)
>> const double atm = 1.01325 * bar; // Standard atmosphere

-------

So a value that we want to be set throughout = const
A value that we might take input from the user at run time, but can no longer be changed = final 

A value that can be changed as required = var

*/

// Remember: prefer const over final over var.