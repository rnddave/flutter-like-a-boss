void main() {
  var person = {
    'name': 'David',
    'age': 44,
    'height': 180,
  };

  // let us say we wanted the keys from the map:
  for (var key in person.keys) {
    print(key);
    /*
      name
      age
      height
    */
  }

  // and for the values, we could use:
  for (var key in person.keys) {
    print(person[key]);
    /*
      David
      44
      180
    */
  }

  // however, if we only wanted the values, not really caring about thekeys at all:
  for (var value in person.values) {
    print(value);
    /*
      David
      44
      180
    */
  }

  // and to have the k:v pair: 
  for (var entry in person.entries) {
    print('${entry.key}: ${entry.value}');
    /*
      name: David
      age: 44
      height: 180
    */
  }

}
