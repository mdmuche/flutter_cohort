void main(List<String> arguments) {
  print('welcome to dart');
  int age = 45;
  String name = 'muche';
  double pie = 3.142;
  print('my name is $name i\'m ${age}yrs old and i have $pie');

  dynamic totalAge = age * 3;

  bool greaterFifthy = age > 50;
  print(totalAge);
  if (!greaterFifthy) {
    print('you are less than fifty');
  } else {
    print('you are greater than fifty');
  }
}
