void main() {
  String name = 'david';
  int age = 44;

  for (int i = 0; i < 5; i++) {
    print(
        'This is my first Dart thingy to check it works in VSCode >> I am counting ${i + 1}');
  }
  print('My name is ' +
      name +
      ' I am $age'); // the + = concatination AND I needed the $ for string interpolation
}
