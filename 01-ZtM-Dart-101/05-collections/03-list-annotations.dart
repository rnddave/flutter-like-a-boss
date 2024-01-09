//
// How does Dart Type system work with or impact lists?
//

void main() {
  // so this works:
  // var cities = ['London', 'Beijing', 'Paris', 'Houston'];

  // but we could be more explicit when we know the data type:
  // List<String> cities = ['London', 'Beijing', 'Paris', 'Houston'];
  // this will prevent us adding non-string items, such as int, bool

  // of course, when useing variables, we should use VAR , CONST , FINAL where possible, so how do we use those types but still restrict the list data to meet expectations?

  // I did not add the new line /per element, dart formatter did that
  var cities = <String>[
    'London',
    'Beijing',
    'Paris',
    'Houston'
  ]; // this limits input to strings, 10, would not be accepted, but '10' would be

  print(cities);
}
