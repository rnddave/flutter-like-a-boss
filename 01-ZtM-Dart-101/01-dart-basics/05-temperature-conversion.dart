/*
Exercise: Temperature conversion

Given the following:

double tempFarenheit = 86;

Write a program to convert the temperature to Celsius, using this formula:

Fahrenheit to Celsius:   (°F − 32) / 1.8 = °C

Then, print the result. The output of this program should be:

86F = 30C

Bonus: the converted temperature in celsius should show at most 1 fractional digit.
*/

void main() {
  double tempFarenheit = 86;

  double convertToCelsius = (tempFarenheit - 32) / 1.8;

  print('${tempFarenheit}F = ${convertToCelsius.round()}C'); // 86.0F = 30C
}
