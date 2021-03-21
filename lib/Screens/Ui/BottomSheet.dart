import 'package:flutter/material.dart';

class BottomSheetCode extends StatefulWidget {
  @override
  _BottomSheetCodeState createState() => _BottomSheetCodeState();
}

class _BottomSheetCodeState extends State<BottomSheetCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          displayBottomSheet(context);
        },
        child: Icon(Icons.ac_unit_outlined),
      ),
    );
  }

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        // backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (ctx) {
          return Container(
            height: 200,
          );
        });
  }
}
