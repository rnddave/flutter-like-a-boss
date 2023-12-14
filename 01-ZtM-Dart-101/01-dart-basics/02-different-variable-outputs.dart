// more simple variable work

void main() {
  double temperature = 20;
  int value = 2;
  String pizza = 'pizza';
  String pasta = 'pasta';

/*
  We want this output:

  The temperature is 20C
  2 plus 2 makes 4
  I like pizza and pasta */

  print('The temperature is ${temperature}C');
  print('$value plus $value makes ${value + value}');
  print('I like $pizza and $pasta');

  /*
  OUTPUT: 

  The temperature is 20.0C // THIS IS NOT WHAT WE WANT
  2 plus 2 makes 4
  I like pizza and pasta
  
  */

  print('The temperature is ${temperature.round()}C');
  print('$value plus $value makes ${value + value}');
  print('I like $pizza and $pasta');

  /*
  OUTPUT: 

  The temperature is 20C 
  2 plus 2 makes 4
  I like pizza and pasta
  
  */
}
