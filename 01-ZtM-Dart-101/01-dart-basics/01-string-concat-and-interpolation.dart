// print various variables;

void main() {
  String firstName = 'Andrea';
  String lastName = 'Bizzotto';
  int age = 36;
  double height = 1.84;

  print(
      'The teacher is called $firstName $lastName, he is $age and stands at $height meters tall');

  // but what if we wanted it to say 1.84m - we could try this:
  // print('$heightm') but heightm doesn't exist

  // yet if we do $height m we get a space after the number:
  print('$height m'); //1.84 m

  // an option might be to use concatination:
  print('$height' + 'm'); // 1.84m

  // indeed this works, but it doesn't look very nice. The better way is to use curly braces
  print('${height}m'); // 1.84m
}
