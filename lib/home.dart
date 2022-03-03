import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: MaterialButton(
          child: Text('test'),
          onPressed: (){
            DatabaseReference df = FirebaseDatabase.instance.reference().child('Test');
            df.set('IsConnected');
          },
        ),
      ),
    );
  }
}
