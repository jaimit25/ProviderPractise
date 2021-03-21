import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractise/Screens/Wax_App/Providers/Settings_Provider.dart';
import 'package:providerpractise/Screens/Wax_App/Screens/Settings.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingprovider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Wax App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: Text(settingprovider.units),
      ),
    );
  }
}
