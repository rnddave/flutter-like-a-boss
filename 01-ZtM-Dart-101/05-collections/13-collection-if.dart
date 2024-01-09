// collection IF

void main() {
  final colours = ['grey', 'brown'];

  const addBlue = false;
  const addRed = true;

  // one way to add things;
  if (addBlue) {
    colours.add('blue');
  }
  if (addRed) {
    colours.add('red');
  }
  print(colours); // [grey, brown, red]

  // the collection-if way >>
  final colors = [
    'purple',
    'orange',
    if (addBlue) 'blue',
    if (addRed) 'red',
  ];

  print(colors); // [purple, orange, red]
}
