// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostBuilder extends StatefulWidget {
  const PostBuilder({super.key});

  @override
  State<PostBuilder> createState() => _PostBuilderState();
}

class _PostBuilderState extends State<PostBuilder> {
  getAllComments() async {
    var url = 'https://jsonplaceholder.typicode.com/comments';
    var res = await http.get(
      Uri.parse(url),
    );

    // print("${res.statusCode}");
    // print("${res.body}");

    return json.decode(res.body);
  }

  @override
  // void initState() {
  //   getAllComments();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('posts page')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('comments page'),
              FutureBuilder(
                  future: getAllComments(),
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
                        dynamic comment = data[index];
                        return Card(
                          child: ListTile(
                            title: Text('${comment['body']}'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${comment['name']}',
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                                Text(
                                  '${comment['email']}',
                                  style: TextStyle(color: Colors.deepPurple),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
