void main() {
  var cities = ['London', 'Beijing', 'Paris', 'Houston'];
  print(cities[3]); // Houston

  print(cities);

  cities.add('Taiyuan');
  print(cities);

  cities.remove('Taiyuan');
  print(cities);

  // loop using for 
  for (var i = 0; i < cities.length; i++) {
    print(cities[i]);
  }

  // another for loop
  for (var city in cities) {
    print(city);
  }
}
