/* 

when your function is small like 

String (String name, int age) it is not too hard to just pass 2x arguments

but as functions become more complicated, passing named arguments is
 increasingly the more efficient way to ensure the correct argument 
 goes to the correct part of the function. 

*/

void main() {
  final person = describeThem('David', 44); // calls the fucntion with arguments
  print(person); // prints what was returned in above function

  final child1 = describeTheChild(name: 'Colin', age: 6); // this is using named arguments
  final child2 = describeTheChild(age: 2, name: 'Nolan'); // using named arguments the otherway around
  print(child1);
  print(child2);

/*

This person is called David and they are 44 yo
This child is called Colin and they are 6 yo
This child is called Nolan and they are 2 yo

*/

}

String describeThem(String name, int age) {
  // basic return function using positional arguments
  return 'This person is called $name and they are $age yo';
}

String describeTheChild({required String name, required int age}) { // by adding curly braces,
// we changed the game
// we now need the calling function to use named arguments

// with NULL SAFETY WE DO NEED SOME ADDITIONAL CODE TO DEAL WITH THE NULL CONDITION 
  return 'This child is called $name and they are $age yo';
}

// for the null safety thing, we have 3 potential fixes: 

/*
1. adding the ?

String describeTheChild({String? name, int? age}) { // using $ means these can be null
  return 'This child is called $name and they are $age yo';
}
// problem with this is that a person should never have null descriptors, so in this case, doesn't make sense

2. set defaults

String describeTheChild({String? name = '', int? age = 0}) {  // arguments are now optional
  return 'This child is called $name and they are $age yo';
}
// probably not suitable for a person function as these should not be optional

3. make the arguments REQUIRED: 

String describeTheChild({required String name, required int age}) { // required has been added
  return 'This child is called $name and they are $age yo';
}

// for this 'describe someone' function, this makes most sense

*/