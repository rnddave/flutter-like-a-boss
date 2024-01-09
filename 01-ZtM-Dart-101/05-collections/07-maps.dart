// MAPS

// dictionaries in other languages (Key:Value pairs)

void main() {
  var person = {
    'name': 'David',
    'age': 44,
    'height': 180,
  };

  print(person); // {name: David, age: 44, height: 180}

  // NB: when using var/final/const the key/value pair can store any type we want
  // dart will infer the type

  // but we can be specific about what we want to store:
  Map<String, dynamic> person2 = {
    // we said the key = string, the value is dynamic
    'name': 'David',
    'age': 44,
    'height': 180,
  };
  print(person2);

  Map<String, String> person3 = {
    // we said the key = string, the value is dynamic
    'name': 'David',
    'age': '44', // now we need to make these values into strings
    'height': '180', // string value
  };
  print(person3);

// you can also do it this way if wanted (Type annotation):
  var person4 = <String, dynamic>{
    'name': 'David',
    'age': 44,
    'height': 180,
  };
  print(person4);

  /* type annotation is not required, but can make code safer by 
  limiting the variables to the data types you are expecting. */

  // NOW FOR ACCESSING ELEMENTS:

  var name1 = person['name'];
  print(name1); // David

  // changing a value
  person['age'] = 43;

  // or add new values:
  person['LikesPizza'] = true;
  print(person); // {name: David, age: 43, height: 180, LikesPizza: true}

  // in earlier example, we decalred the name1 variable
  // output looks like a string, but at compile time, we can't use String(methods)
  // Because Dart isn't sure it is a String type...

  // making sure the data has the type we require:
  var name2 = person2['name'] as String;
  print(name2); // David

  // or (but above is preferred way)
  String name4 = person4['name'];
  print(name4);
}
