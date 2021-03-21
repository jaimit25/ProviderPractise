import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractise/Screens/Practising%20Provider/ProPractise.dart';

class ProviderPractise extends StatelessWidget {
  String name, occupation;
  TextEditingController nameP = TextEditingController();
  TextEditingController occupationp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var propractise = Provider.of<ProPractise>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Self Pratise'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                propractise.Name == null ? 'Enter name' : propractise.Name),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: nameP,
              // onChanged: (value) {
              //   name = value;
              // },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(propractise.Name == null
                ? 'Enter Occupation'
                : propractise.Occupation),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: occupationp,
              // onChanged: (value) {
              //   occupation = value;
              // },
            ),
          ),
          Container(
            child: MaterialButton(
              color: Colors.red,
              child: Text('Click to notify listener'),
              onPressed: () {
                propractise.setName(nameP.text);
                propractise.setoccupation(occupationp.text);
                nameP.clear();
                occupationp.clear();
              },
            ),
          ),
        ],
      ),
    );
  }
}
