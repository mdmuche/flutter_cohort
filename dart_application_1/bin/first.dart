void main(List<String> arguments) {
  print('hello i just started dart');
  print('i will appear on the console');
  print('i don\'t like you');
  int age = 35;
  String name = 'martins';
  double pie = 3.142;

  print('my name is $name i am ${age}yrs old i have $pie pie radius');

  dynamic totalAge = age / 3;

  bool greaterThirty = age > 30;

  print(totalAge);
  print(greaterThirty);
}
