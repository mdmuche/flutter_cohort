void main(List<String> arguments) {
  void greeting(int time, String firstName, {String? lastName}) {
    print('good ${time < 12 ? 'AM' : 'PM'} $firstName ${lastName ?? ''}');
  }

  greeting(15, 'martins', lastName: 'abula');

  int times(int num1, int num2) {
    var multiply = num1 * num2;

    return multiply;
  }

  int total = times(5, 4);
  print(total);

  // void greeting(DateTime time, String name, {String? lastname}) {
  //   print('my name is $name ${lastname ?? ''}and it\'s currently $time');
  // }

  // greeting(DateTime.now(), 'martins');

  // void blackorwhite(String colour, String continent) {
  //   if (colour == 'black' && continent == 'africa') {
  //     print('you are a black man');
  //   }
  //   if (colour == 'white' && continent == 'europe') {
  //     print('you are a white man');
  //   }
  // }

  // blackorwhite('black', 'africa');

  // int sum(int num1, int num2) {
  //   return num1 * num2;
  // }

  // print(sum(5, 6));

  // String concat(String firstname, dynamic lastname) {
  //   return firstname + lastname;
  // }

  // print(concat('martins', 'abula'));
}
