void main() {
  var countries = {'France', 'UK', 'China', 'US'};

  // SOME THINGS WE CAN DO WITH SETS:

  countries.add('Iceland');
  print(countries); // {France, UK, China, US, Iceland}

  countries.add('UK');
  // no error - but will not add duplicate
  print(countries); // {France, UK, China, US, Iceland}

  // similar to lists >> 
  print(countries.first); //  France
  print(countries.last); // Iceland
  print(countries.length); // 5

}
