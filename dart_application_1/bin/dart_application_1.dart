void main(List<String> arguments) {
  void greeting(String time, String name, {String? lastName}) {
    print('good $time $name ${lastName ?? ''}');
  }

  greeting('afternoon', 'farbar', lastName: 'barfar');
  greeting('evening', 'barbaz');

  int sum(int a, int b) {
    var add = a + b;

    return add;
  }

  int total = sum(5, 4);
  print(total);
}
