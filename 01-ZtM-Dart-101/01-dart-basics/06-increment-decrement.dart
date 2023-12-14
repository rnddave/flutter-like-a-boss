// guess the outpu of the following:

void main() {
  int x = 1;
  int y = x++;
  int z = --y;
  print('x: $x, y: $y, z: $z');
  // my guess:
  // x: 1, y: 2, z: 1

  // I was wrong:
  // x: 2, y: 0, z: 0

  //---------------------

  // this is kind of odd actually!
  // it has something to do with the variables are calculated before the print statement runs
  // so x2 was 1, but y2, made it into 2 yet y2 is the unmodified version of x2
  // what the actual fuck!

  int x2 = 1;
  int y2 = x2++;
  print(x2); // 2
  print(y2); // 1

  // if you use ++x then what you get is x3 (without any changes) and y3 is x3+changes (which is what I thought would happen with the other format above - so it is super odd)

  int x3 = 1;
  int y3 = ++x3;
  print(x3); // 1
  print(y3); // 2

  // breaking this up
  print('---');

  int x4 = 1;
  print(x4); // 1
  int y4 = x4++;

  print(y4); // 1
  print(x4); // 2

  int y4b = ++x4;
  print(y4b); // 3
  print(x4); // 3

  // Woah - it's starting to sink in, but seems such an odd way of doing things!
}
