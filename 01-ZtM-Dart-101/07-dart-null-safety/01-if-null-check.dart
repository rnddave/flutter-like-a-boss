// dart uses something called Flow Analysis: Promotion to allow null types if they are in conditional expressions:

void main() {
  int? a;
  int b = 2;
  // print(a + b); // would fail compile time checks

  if (a == null) {
    print('Cannot xomplete expression due to null data type');
  } else {
    print(a + b); // Dart uses Flow Analysis to realise this int could be changed and the fact that it is currently a null is not an issue as the if check will prevent the failure 
  }
}
