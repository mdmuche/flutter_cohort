// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/postBuilder.dart';
import 'package:http/http.dart' as http;

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  getUsers() async {
    var res =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    // print('Response status: ${res.statusCode}');
    // print('Response body: ${res.body}');

    return json.decode(res.body);
  }

  @override
  //?init state is called whenever page loads
  // void initState() {
  //   getUsers();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'consuming API',
          // style: TextStyle(color: Colors.white),
        ),
        // backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text('Good to go!'),
              FutureBuilder(
                  future: getUsers(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }
                    // print(snapshot.data);
                    List data = snapshot.data;
                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        dynamic user = data[index];
                        return Card(
                          child: ListTile(
                            title: Text('${user['name']}'),
                            subtitle: Text('${user['email']}'),
                            trailing: ElevatedButton(
                              child: const Text('Comments...'),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => PostBuilder()));
                              },
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
