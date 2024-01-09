// what happenes if we try to access keys that don't exist?

void main() {
  var person = {
    'name': 'David',
    'age': 44,
    'height': 180,
  };

  var weight = person['weight'];
  print(weight); // null
  // null = speical type for no value

  // you could write an expression to check for this condition:

  if (weight == null) {
    print('no value');  // no value
  } else {
    print(weight);
  }
}
