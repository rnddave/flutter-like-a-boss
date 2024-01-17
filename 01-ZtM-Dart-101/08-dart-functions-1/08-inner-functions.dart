// not actually sure why (yet, but you can build functions inside other functions:)

const globalVar = 11;

void main() {
  const localToMainVar = 10;

  print("the sum of Local Var * Global Var = ${localToMainVar * globalVar}");

  void innerFunction(int passedToInnerFunc) {
    print(
        "the sum of Local Var * Global Var * Inner Var = ${localToMainVar * globalVar * passedToInnerFunc}");
  }

  innerFunction(7);

  // the sum of Local Var * Global Var = 110
  // the sum of Local Var * Global Var * Inner Var = 770


  
}


// the inner function can also have further inner functions.... 


// tbh, the usecases for this are low in number, so it can be done but is rarely done. 