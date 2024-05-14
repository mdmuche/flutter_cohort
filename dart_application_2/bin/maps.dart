void main(List<String> arguments) {
  // List<String> users = ['far', 'bar', 'barz'];

  // print(users[1]);

  // Map<String, dynamic> user = {
  //   'name': 'far',
  //   'email': 'far@gmail.com',
  //   'age': 35,
  // };

  // print(user);
  // print(user['name']);

  List<Map<String, dynamic>> allUsers = [
    {
      'name': 'far',
      'email': 'far@gmail.com',
      'age': 45,
      'address': {
        'street': 'coal city',
        'state': 'enugu',
        'no': 55,
      }
    },
    {
      'name': 'bar',
      'email': 'bar@gmail.com',
      'age': 35,
      'address': {
        'street': 'premium town',
        'state': 'akwa ibom',
        'no': 33,
      }
    },
  ];

  print(allUsers);
  print(allUsers[1]['address']['state']);
}
