typedef Greet = String Function(String); // this is an alias

String sayHi(String name) => 'Hi $name';
String sayHello(String name) => 'Hello $name';
String sayHola(String name) => 'Hola $name';
String sayHalo(String name) => 'Halo $name';

void main() {
  final sayHi = (name) => 'Hi, $name';
  welcome(sayHi, 'David');  // Hi, David, welcome to this function....
  welcome(sayHello, 'David'); //Hello, David, welcome to this function....
  welcome(sayHola, 'David');  // Hola, David, welcome to this function....
  welcome(sayHalo, 'David');  // Halo, David, welcome to this function....

}

void welcome(Greet greet, String name) {
  // using Alias = makes writing this easier
  print('${greet(name)}, welcome to this function....');
}
