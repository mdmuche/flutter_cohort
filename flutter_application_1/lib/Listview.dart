// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/builders.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: const Text(
          'cool widgets',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              // ignore: prefer_const_constructors
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Text('hello'),
                Icon(
                  Icons.usb_rounded,
                  color: Colors.red,
                  size: 60,
                ),
                ElevatedButton(
                  child: const Text('Builders screen'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Builders(),
                      ),
                    );
                  },
                ),
                Card(
                  elevation: 20,
                  color: Colors.grey,
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 40,
                    ),
                    title: Text('abula martins'),
                    subtitle: Text('software engineer'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    textColor: Colors.purple,
                  ),
                ),
                Card(
                  elevation: 20,
                  color: Colors.grey,
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 40,
                    ),
                    title: Text('abula martins'),
                    subtitle: Text('software engineer'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    textColor: Colors.purple,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              maxRadius: 50,
              child: Icon(Icons.ac_unit_outlined),
            ),
            GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 30,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                childAspectRatio: 2 / 2,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    child: Icon(Icons.access_alarm),
                  ),
                  Container(
                    color: Colors.red,
                    child: Icon(Icons.access_alarm),
                  ),
                  Container(
                    color: Colors.red,
                    child: Icon(Icons.access_alarm),
                  ),
                  Container(
                    color: Colors.red,
                    child: Icon(Icons.access_alarm),
                  ),
                  Container(
                    color: Colors.red,
                    child: Icon(Icons.access_alarm),
                  ),
                  Container(
                    color: Colors.red,
                    child: Icon(Icons.access_alarm),
                  ),
                  Container(
                    color: Colors.red,
                    child: Icon(Icons.access_alarm),
                  ),
                  Container(
                    color: Colors.red,
                    child: Icon(Icons.access_alarm),
                  ),
                  Container(
                    color: Colors.red,
                    child: Icon(Icons.access_alarm),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
