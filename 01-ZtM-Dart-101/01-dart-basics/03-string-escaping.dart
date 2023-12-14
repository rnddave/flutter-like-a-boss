// we need to guess output of following based on string escaping:

void main() {
  int a = 10;
  print('$a'); // 10
  print('\$a'); // $a
  print('\$$a'); // $10
}

/*
Yes, I guessed correctly; 

10
$a
$10

*/