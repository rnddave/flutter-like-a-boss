void main() {
  var cities = ['London', 'Beijing', 'Paris', 'Houston'];
  print(cities[3]); // Houston

  // adding things to the list
  cities.add('Taiyuan'); // this adds to the end
  print(cities); // [London, Beijing, Paris, Houston, Taiyuan]

  // removing them from the list
  cities.remove('Taiyuan');
  print(cities); // [London, Beijing, Paris, Houston]

  // inserting a list item (not at the end)
  cities.insert(1, 'Taiyuan');
  print(cities); // [London, Taiyuan, Beijing, Paris, Houston]

  // removing an item by index
  cities.removeAt(1);
  print(cities); // [London, Beijing, Paris, Houston]

  print(cities.length); // 4
  print(cities.isEmpty); // false
  print(cities.isNotEmpty); // true

  // first / last do not work on empty lists
  print(cities.first); // London
  print(cities.last); // Houston

  // cities.clear(); = empty the list

  // finding things
  print(cities.contains('Moscow')); // false
  print(cities.contains('London')); // true
  print(cities.indexOf('Beijing')); // 1

}
