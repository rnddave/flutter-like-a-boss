// switch

// first we consider a lot of if/else statements: 

/*
void main () { 
  const pos = 1;

  if (pos == 1) {
    print ('gold medal');
  } else if (pos == 2) {
    print('silver medal');
  } else if (pos == 3) {
    print('bronze medal');
  } else {
    print('no medal for you, try harder next time');
  }
}

*/

void main () { 
  const pos = 2;

  switch(pos) {
    case 1: 
      print ('gold medal');
      break;
    case 2:
      print ('silver medal');
      break;
    case 3:
      print ('bronze medal');
      break;
    default:
      print ('no medal for you, try harder next time');
      break;
  }
}

// I mean to me, it looks like more coding went into that than the original example...