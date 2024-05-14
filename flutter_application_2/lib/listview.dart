// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/builders.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'hello',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Text(
                  'hello and welcome to my world',
                ),
                Icon(
                  Icons.access_time_filled_sharp,
                  color: Colors.red,
                  size: 20,
                ),
                ElevatedButton(
                  child: const Text('builders screen'),
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
                  elevation: 10,
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
              maxRadius: 40,
              child: Icon(Icons.ac_unit),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisSpacing: 30,
              mainAxisSpacing: 5,
              crossAxisCount: 4,
              childAspectRatio: 2 / 2,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  child: Icon(
                    Icons.access_alarm,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: Icon(Icons.access_alarm_sharp),
                ),
                Container(
                  color: Colors.green,
                  child: Icon(Icons.access_time),
                ),
                Container(
                  color: Colors.pink,
                  child: Icon(Icons.coronavirus),
                ),
                Container(
                  color: Colors.black,
                  child: Icon(Icons.computer_sharp),
                ),
                Container(
                  color: Colors.purple,
                  child: Icon(Icons.clear_outlined),
                ),
                Container(
                  color: Colors.black,
                  child: Icon(Icons.event_rounded),
                ),
                Container(
                  color: Colors.brown,
                  child: Icon(Icons.garage),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
