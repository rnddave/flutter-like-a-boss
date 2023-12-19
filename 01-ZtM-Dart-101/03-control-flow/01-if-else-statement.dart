void main() {
  const age = 12;

  if (age < 16)
    {
      print('Junior ticket');
      print('Price is \$8');
    } else if (age >= 60 ) {
      print('Senior ticket');
      print('Price is \$6');
    } else {
      print('Regular ticket');
      print('Price is \$10');
    }
  print('Enjoy your visit');
}
