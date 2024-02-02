// closure

void main() {
  const multiplier = 10;
  const list = [1, 2, 3];

  final result = list.map((x) {
    return x * multiplier;
  });

  print(result); // (10, 20, 30)
}
