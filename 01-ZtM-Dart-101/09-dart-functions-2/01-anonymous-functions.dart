void main() {
  final sayHi = (name) =>
      'Hi, $name'; // this variable has an un-named function (anonymous)

  print(sayHi('David')); // Hi, David

  // calling the function that calls a function:
  welcome(sayHi, 'David');  // Hi, David, welcome to this function....
}

// now for something that looks rediculous: (this is called First-Class objects)
void welcome(String Function(String) greet, String name) {
  print('${greet(name)}, welcome to this function....');
}
