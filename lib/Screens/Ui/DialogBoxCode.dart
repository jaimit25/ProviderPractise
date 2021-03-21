import 'package:flutter/material.dart';

class DialogBoxCode extends StatefulWidget {
  @override
  _DialogBoxCodeState createState() => _DialogBoxCodeState();
}

class _DialogBoxCodeState extends State<DialogBoxCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DialogBox(context);
        },
        child: Icon(Icons.ac_unit_outlined),
      ),
    );
  }

  void DialogBox(context) {
    var baseDialog = AlertDialog(
      title: new Text("HI"),
      content: Container(
        color: Colors.black,
        height: 100,
      ),
      actions: <Widget>[
        FlatButton(
          color: Colors.blue,
          child: new Text("Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    showDialog(context: context, builder: (BuildContext context) => baseDialog);
  }
}
