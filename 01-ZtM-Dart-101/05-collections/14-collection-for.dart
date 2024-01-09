// Collection-FOR

void main() {
  // these are to show collection-if
  const addBlue = false;
  const addRed = true;
  // these will be sused in collection-for
  final colors2 = ['grey', 'brown'];
  const extraColors = ['yellow', 'green'];

  final colors = [
    'purple',
    'orange',
    if (addBlue) 'blue',
    if (addRed) 'red',
    for (var color in extraColors) color,
    for (var color in colors2) color,
  ];

  print(colors); // [purple, orange, red, yellow, green, grey, brown]
}
