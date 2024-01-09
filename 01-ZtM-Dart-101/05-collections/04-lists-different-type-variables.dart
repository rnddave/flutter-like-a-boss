// var / final / const ??

void main() {
  // anything can be added or removed:
  var cities = ['London', 'Beijing', 'Paris', 'Houston'];

  // using a FINAL type = MODIFIABLE LIST - but not REPLACE
  final citiesTwo = ['nodnoL', 'gnijieB', 'siraP', 'notsuoH'];

  // CAN still add elements to it:
  citiesTwo.add('Taiyuan');
  print(citiesTwo);

  // CAN remove an element
  citiesTwo.remove('Taiyuan');
  print(citiesTwo);

  // CAN insert an element
  citiesTwo.insert(1, 'Taiyuan');
  print(citiesTwo);

  // CAN remove an existing element
  citiesTwo.remove('nodnoL');
  print(citiesTwo);

  // it seems the only thing you can NOT do is completely create a new list:
  cities = ['Houston', 'Paris', 'Beijing']; // this is fine (but the other will fail)
  // citiesTwo = ['Houston', 'Paris', 'Beijing'];  // Error: Can't assign to the final variable 'citiesTwo'.


  //////////////// USING CONST /////////////////

  // using the CONST type = UNMODIFIABLE list
  const citiesThree = ['Bristol', 'Shanghai', 'Amsterdam'];

  // can NOT still add elements to it:
  // citiesThree.add('Brussells');
  print(citiesThree);

  // can NOT remove an element
  // citiesThree.remove('Bristol');

  // can NOT insert an element
  // citiesThree.insert(1, 'Exeter');

  // can NOT remove an existing element
  // citiesThree.remove('Shanghai');
  print(citiesThree);

  // can NOT replace the entire list
  // citiesThree = ['Houston', 'Paris', 'Beijing']; 
}
