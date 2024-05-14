// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Builders extends StatefulWidget {
  const Builders({super.key});

  @override
  State<Builders> createState() => _BuildersState();
}

class _BuildersState extends State<Builders> {
  final name = TextEditingController();
  final phone = TextEditingController();

  addUser() {
    final _name = name.text;
    final _phone = phone.text;

    // since this is a statefulwidget we setstate
    setState(() {
      users.add({
        'name': _name,
        "phone": _phone,
      });
    });

    //clear input fields
    name.text = '';
    phone.text = '';
  }

  final List<Map<String, dynamic>> users = [
    {
      'name': "patrick doyle",
      "phone": "83673777383",
    },
    {
      "name": "katlyn prisca",
      "phone": "63677373822",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'builders',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('full name'),
              TextFormField(
                controller: name,
              ),
              Text('phone'),
              TextFormField(
                controller: phone,
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
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 1,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.red,
                    child: Icon(
                      Icons.access_alarm,
                    ),
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
