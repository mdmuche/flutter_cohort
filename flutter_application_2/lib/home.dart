import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'hello welcome back',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 200,
            width: 400,
            child: Center(
              child: Text(
                'hello welcome!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Text('the subtle art of not giving a fuck'),
          Icon(
            Icons.person,
            color: Colors.blue,
            size: 60,
          ),
          Row(
            children: [Icon(Icons.play_arrow_sharp), Text('press to play')],
          )
        ],
      ),
    );
  }
}
