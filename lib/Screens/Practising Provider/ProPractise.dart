import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProPractise with ChangeNotifier {
  String _name;
  String _occupation;
  ProPractise() {
    _name = 'Name';
    _occupation = 'Occupation';
    loadPreferences();
  }
  String get Name => _name;
  String get Occupation => _occupation;

  void setName(String name) {
    _name = name;
    notifyListeners();
    savePreferences();
  }

  void setoccupation(String occupation) {
    _occupation = occupation;
    notifyListeners();
    savePreferences();
  }

  savePreferences() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.setString('name', _name);
    sharedPref.setString('occupation', _occupation);
  }

  loadPreferences() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    String name = sharedPref.getString('name');
    String occupation = sharedPref.getString('occupation');
    if (name != null) {
      setName(name);
    }
    if (occupation != null) {
      setoccupation(occupation);
    }
  }
}
