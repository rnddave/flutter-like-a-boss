void main() {
  var countries = {'France', 'UK', 'China', 'US'};

  // SOME THINGS WE CAN DO WITH SETS:

  countries.add('Iceland');
  print(countries); // {France, UK, China, US, Iceland}

  countries.add('UK');
  // no error - but will not add duplicate
  print(countries); // {France, UK, China, US, Iceland}

  // similar to lists >>
  print(countries.first); //  France
  print(countries.last); // Iceland
  print(countries.length); // 5

  print(countries.contains('UK')); // true

  ///////// DIFFERENCES \\\\\\\\\\\\\\\
  // These things can be done in SETS but not in LISTS

  var euCountries = {'France', 'UK', 'Germany', 'Russia'};
  var asianCountries = {'Russia', 'China', 'Japan'};

  // Union (joining)
  print(euCountries.union(asianCountries));
  // {France, UK, Germany, Russia, China, Japan}
  // NB Russia only appears once, a set is a collection of UNIQUE elements remember!! 

  // intersection (what is the same between them)
  print(euCountries.intersection(asianCountries));
  // {Russia}

  // difference (what is not the same... (though only against the first set...))
  print(euCountries.difference(asianCountries));
  // {France, UK, Germany}




}
