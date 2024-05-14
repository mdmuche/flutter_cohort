void main(List<String> arguments) {
  //?>>>>>>>conditionals<<<<<<<<<
  //? if else statements
  int age = 20;
  if (age > 25) {
    print('you are an adult, and should be thinking of settling down');
  } else if (age > 18) {
    print('you are an adult and should be in college');
  } else {
    print('you are not an adult');
  }
  //? logical operators
  String animal = 'cat';
  if (animal == 'cat' || animal == 'dog') {
    print('this animal is a domestic animal');
  } else {
    print('it is not');
  }
  String animal1 = 'cat';
  int age1 = 2;
  if (animal1 == 'cat' && age1 < 3) {
    print('this animal is a small domestic animal');
  } else {
    print('it is not');
  }
}
