void main(List<String> arguments) {
  List<String> users = ['chinedu', 'micheal', 'favour'];

  print(users[1]);

  Map<String, dynamic> user = {
    'name': 'merino',
    'email': 'merino@gmail.com',
    'age': 38
  };
  print(user);
  print(user['name']);

  List<Map<String, dynamic>> allUsers = [
    {
      'name': 'merino',
      'age': 38,
      'gender': 'male',
      'address': {
        'street': 'coal city',
        'state': 'enugu',
      }
    },
    {
      'name': 'priscilia',
      'age': 68,
      'gender': 'female',
    },
  ];

  print(allUsers);
  print(allUsers[0]['address']['street']);
}
