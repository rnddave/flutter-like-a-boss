void main () {

  for (var i = 1; i <= 30; i ++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('fizz buzz');
      break; // adding a break statement to see how it ejects out of the loop
    } else if (i % 3 == 0 ) {
      print ('fizz');
    } else if (i % 5 == 0 ) {
      print('buzz');
    } else {
      print(i);
    }
  }
  print('done');
}

/*

IF WE DID NOT HAVE break THEN THIS WOULD HAVE BEEN REPEATED TWICE (to 30)
1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizz buzz
done 

--------

continue allows you to jump to next part of code. 

*/