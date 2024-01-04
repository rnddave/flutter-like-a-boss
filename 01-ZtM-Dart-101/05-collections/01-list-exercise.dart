/* 
Sum of items in the list

given `[1, 3, 5, 7, 9]`

write program that prints the sum of all these values
 */

void main() {
  var theList = [1, 3, 5, 7, 9];
  var sumOfX = 0;

  for (var theNum in theList) {
    sumOfX = sumOfX + theNum; // could have used sumOfX += theNum; 
  }
  print(sumOfX);
}
