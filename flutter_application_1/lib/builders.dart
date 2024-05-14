// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Builders extends StatefulWidget {
  Builders({super.key});

  @override
  State<Builders> createState() => _BuildersState();
}

class _BuildersState extends State<Builders> {
  final name = TextEditingController();
  final phone = TextEditingController();

  addUser() {
    final _name = name.text;
    final _phone = phone.text;
    //? since this is a stateful widget we setstate
    setState(() {
      users.add({
        'name': _name,
        'phone': _phone,
      });

      // clear input field
      name.text = '';
      phone.text = '';
    });
  }

  final List<Map<String, dynamic>> users = [
    {
      'name': "john chadwick",
      'phone': "83838386383",
    },
    {
      'name': "boris gateman",
      'phone': "8383837738",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: const Text(
          'Builders',
          style: TextStyle(
            color: Colors.white,
          ),
        )),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('name'),
              TextFormField(
                controller: name,
              ),
              SizedBox(
                height: 20,
              ),
              Text('phone'),
              TextFormField(
                controller: phone,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text('Add'),
                onPressed: () {
                  addUser();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final user = users[index];
                  return Card(
                    elevation: 20,
                    color: Colors.grey,
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 40,
                      ),
                      title: Text('${user['name']}'),
                      subtitle: Text('${user['phone']}'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                      textColor: Colors.purple,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'grid view builder',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                    ),
                    child: Icon(Icons.account_balance_rounded),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
