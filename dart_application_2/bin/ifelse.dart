void main(List<String> arguments) {
  int age = 28;
  if (age > 25) {
    print('you should be doing your nysc');
  } else if (age > 18) {
    print('you should be in the higher institution');
  } else {
    print('you should either be in secondary or primary school');
  }

  String animal = 'cat';
  int agee = 2;
  if (animal == 'dog' || animal == 'cat') {
    print('$animal is a domestic animal');
  } else {
    print('$animal is not a domestic animal');
  }

  if (animal == 'cat' && agee < 3) {
    print('$animal is a domestic animal and is very small');
  } else {
    print('it is not');
  }
}
