// copying collections

void main() {
  // what happenes when we copy a collection?
  var myList = [1, 2, 3, 4, 5];
  var myCopy = myList;

  // but have we copied the collection or a link to the collection?
  // to find out, we will change one of the elements
  myCopy[0] = 9;
  print(myList); // [9, 2, 3, 4, 5]
  print(myCopy); // [9, 2, 3, 4, 5]
  //or
  print(myList == myCopy); // true

  // so what we actually have is a copy of the pointer,
  // or the memory location for the original collection I think

  // this time we will try to initialise an empty list and the populate
  // it with contents from another list
  var myNewCopy = [];
  myNewCopy = myList;
  print(myNewCopy); // [9, 2, 3, 4, 5]

  // now let's make a change to index 0
  myNewCopy[0] = 69;
  print(myList == myNewCopy); // true (meaning they both changed)
  print(myCopy == myNewCopy); // true

  // these are all still pointing to the same memory location,
  // it seems the only way to get a unique object is to rebuild it from scratch:
  var myNewNewCopy = [for (var item in myList) item];
  print(myNewNewCopy); // [69, 2, 3, 4, 5]
  print(myList); // [69, 2, 3, 4, 5]
  print(myNewNewCopy == myList); // false

  // we can see that even with same values, they are already no longer equal
  // however, we will change a value to verify the break:
  myNewNewCopy[0] = 43;
  print(myList); // [69, 2, 3, 4, 5]
  print(myNewNewCopy); // [43, 2, 3, 4, 5]

  // we could also do this with a spread:

  var myNewestCopy = [
    ...myList,
  ];

  // checking them
  print(myList == myNewestCopy);  // They currently have the same values, but are pointing to unique places in system memory
  
}
