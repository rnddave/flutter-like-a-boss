// spreads
// this basically unpacks the list. 
// consider:

void main() {
  // these are to show collection-if
  const addBlue = false;
  const addRed = true;
  // these will be sused in collection-for
  const colors2 = ['grey', 'brown'];
  // these will be used to show spreads
  const extraColors = ['yellow', 'green'];

  final colors = [
    'purple',
    'orange',
    if (addBlue) 'blue',
    if (addRed) 'red',
    for (var color in colors2) color,
   ...extraColors,
  ];

  print(colors); // [purple, orange, red, grey, brown, yellow, green]
}
