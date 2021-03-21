import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractise/Screens/Wax_App/Providers/Settings_Provider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsprovider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: [],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Units'),
                DropdownButton(
                  value: settingsprovider.units,
                  onChanged: (value) {
                    //Update the units using Provider
                    settingsprovider.setUnits(value);
                  },
                  items: <String>['Imperial', 'Metric']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Wax Lines'),
                Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: [
                      FilterChip(
                        onSelected: (bool value) {
                          if (value == true) {
                            settingsprovider.addWaxLine('Swix');
                          } else {
                            settingsprovider.removeWaxLine('Swix');
                          }
                        },
                        selected: settingsprovider.waxLines.contains('Swix')
                            ? true
                            : false,
                        label: Text(
                          'Swix',
                          style: TextStyle(color: Colors.pinkAccent),
                        ),
                      ),
                      FilterChip(
                        onSelected: (bool value) {
                          if (value == true) {
                            settingsprovider.addWaxLine('Toko');
                          } else {
                            settingsprovider.removeWaxLine('Toko');
                          }
                        },
                        selected: settingsprovider.waxLines.contains('Toko')
                            ? true
                            : false,
                        label: Text(
                          'Toko',
                          style: TextStyle(color: Colors.pinkAccent),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
