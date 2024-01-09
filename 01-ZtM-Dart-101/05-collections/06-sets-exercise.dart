/*
Given two integer sets a and b, write a program to calculate the set of the elements that belong to either a or b, but not both.

For example, given the following:

const a = { 1, 3 };
const b = { 3, 5 };
The program should print {1, 5}.

Then, calculate and print the sum of all the items in the resulting set.
*/

// THIS WAS MY ATTEMPT >>
/*
void main() {
  const a = {1, 3};
  const b = {3, 5};

  // using difference to extract ONLY the unique values
  var c = a.difference(b);
  var d = b.difference(a);
  // using union to merge this into a new set
  var e = c.union(d);

  print(e); // {1, 5}

  var sumOf = e.elementAt(0) + e.elementAt(1);

  print(sumOf); // 6
}
*/

// ALTERNATIVE, MUCH BETTER >>

void main() {
  const a = {1, 3};
  const b = {3, 5};

  final c = a.union(b).difference(a.intersection(b));
  print(c); // {1, 5}

  var sum = 0;
  for (var value in c) {
    sum += value;
  }

  print(sum); // 6
}
