/*
Given the following list of restaurants:

void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];
}
Write a program that calculates the average rating score for each restaurant, and adds it as an 'avgRating': value key-value pair for that restaurant.

Use the following code as a starting point:

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    // TODO: calculate average rating
    restaurant['avgRating'] = /* avg rating here */;
  }
*/

void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;

    // declare a couple of working variables
    var sum = 0.0;
    var avg = 0.0;

    // loop through each rating, finding the total and then divide by length
    for (var rating in ratings) {
      sum += rating;
      // I put the average here: 
      avg = sum / ratings.length;
    }

    // but the solution recommend put it here, now I tried both ways, getting same answer, 
    // so I don't think it matters.
    //avg = sum / ratings.length;


    // update the Map to include the new 'average rating'
    restaurant['avgRating'] = avg;
  }

  print(restaurants);
  /*
  [{name: Pizza Mario, cuisine: Italian, ratings: [4.0, 3.5, 4.5], avgRating: 4.0}, 
  {name: Chez Anne, cuisine: French, ratings: [5.0, 4.5, 4.0], avgRating: 4.5}, 
  {name: Navaratna, cuisine: Indian, ratings: [4.0, 4.5, 4.0], avgRating: 4.166666666666667}]
  */

  // my solution was very similar to instructor, answers match so I am happy with this.
}
