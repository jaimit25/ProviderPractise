import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:providerpractise/Screens/Upload.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _firebaseRef =
      FirebaseDatabase(databaseURL: 'https://ecommerce-c5457.firebaseio.com/')
          .reference()
          .child('Values');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: () {
          // FirebaseDatabase.instance.reference().child("Contact").push().set(
          //     {'Name': 'Jaimit', 'Number': '+91 65678901234'}).catchError((e) {
          //   print(e);
          // }).then((value) {
          //   print("Data Sent");
          // });

          // FirebaseFirestore.instance
          //     .collection('users')
          //     .add({'Name': 'Jaimit', 'Number': '+91 65678901234'});
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Upload()));
        },
        child: Container(
          width: 300,
          height: 50,
          child: Center(
            child: Text(
              "Click",
              style: TextStyle(color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(color: Colors.black),
        ),
      ),
    ));
  }
}
