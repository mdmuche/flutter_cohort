import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.black,
    //   height: 400,
    //   width: 400,
    //   child: Text('hello world'),
    // );
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('hello world'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFF864990),
            height: 400,
            width: 500,
            // ignore: prefer_const_constructors
            child: Center(
              child: Text(
                'welcome to mobile app development',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text('the subtle art of not giving a fuck'),
          Icon(
            Icons.account_circle,
            size: 60,
            color: Colors.blue,
          ),
          Row(
            children: [Icon(Icons.play_arrow_sharp), Text('press to play')],
          )
        ],
      ),
    );
  }
}
