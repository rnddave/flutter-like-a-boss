// enumerations

/* again, we will start code from a previous file, to see how it compares;

void main () { 
  const pos = 2;

  switch(pos) {
    case 1: 
      print ('gold medal');
      break;
    case 2:
      print ('silver medal');
      break;
    case 3:
      print ('bronze medal');
      break;
    default:
      print ('no medal for you, try harder next time');
      break;
  }
}

*/

enum Medal { gold, silver, bronze, noMedal}

void main () { 
  Medal medal = Medal.gold;

  switch(medal) {
    case Medal.gold: 
      print ('gold medal');
      break;
    case Medal.silver:
      print ('silver medal');
      break;
    case Medal.bronze:
      print ('bronze medal');
      break;
    
    // default can be default or Medal.noMedal in this case
    default:
      print ('no medal for you, try harder next time');
      break;
  }


/*

when to use this? 

proposed = ask yourself; 
- do you need only a pre-defined set of values? 
- consider declaring enum type = resulting code is clearer

good examples;

  days of the week
  suits (card suits)

  enum DaysOfTheWeek {
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday
  }
  */

  // we can access data inside the enum: 

  print(medal);
  print(medal.name);
  print(Medal.values);
  print(Medal.values.byName('silver'));

/*
Medal.gold
gold
[Medal.gold, Medal.silver, Medal.bronze, Medal.noMedal]
Medal.silver
*/

}