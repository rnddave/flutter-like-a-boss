void main() {
  // void = no return value
  sayHello(); // calling a function

  const name =
      'David'; // good practice to use nouns in the naming of variables (Apparently)
  const age = 44;
  doTheThing(name, age); // calling a function and passing arguments

  print(getTheDate());  // this will print the output that is trurned from the function
}

void sayHello() {
  // basically a nothing function
  print('Hello from my function');
}

void doTheThing(String name, int age) {
  // apparently it is good practice to use verbs in name of functions because they are DOING something
  print('my name is $name and I am $age years old');
}

String getTheDate() {   // not using void = I want to return something
  return 'Today is ${DateTime.now()}';    // returning this 
}
