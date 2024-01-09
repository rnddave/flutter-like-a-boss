void main() {
  // list of maps...
  var restaurants = [
    {
      'name': 'One',
      'type': 'Italian',
      'ratings': [5.0, 4.3, 3.8],
    },
    {
      'name': 'Two',
      'type': 'Greek',
      'ratings': [3.4, 3.3, 4.8],
    },
    {
      'name': 'One',
      'type': 'Indian',
      'ratings': [2.0, 2.3, 4.8],
    },
  ];

  for (var eatery in restaurants) {
    print(eatery);
  }

/*
  {name: One, type: Italian, ratings: [5.0, 4.3, 3.8]}
  {name: Two, type: Greek, ratings: [3.4, 3.3, 4.8]}
  {name: One, type: Indian, ratings: [2.0, 2.3, 4.8]}
*/

}
