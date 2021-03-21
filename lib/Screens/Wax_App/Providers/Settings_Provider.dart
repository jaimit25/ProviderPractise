import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider with ChangeNotifier {
  String _units;
  List<String> _waxLines;

  SettingsProvider() {
    _units = 'Imperial';
    _waxLines = ['Swix', 'Toko'];
    loadPreferences();
  }

  //Getters
  String get units => _units;
  List<String> get waxLines => _waxLines;

  //Setters
  void setUnits(String units) {
    _units = units;
    notifyListeners();
    savePreferences();
  }

  void _setWaxLines(List<String> waxLines) {
    _waxLines = waxLines;
    notifyListeners();
  }

  void addWaxLine(String waxLine) {
    if (_waxLines.contains(waxLine) == false) {
      _waxLines.add(waxLine);
      notifyListeners();
      savePreferences();
    }
  }

  void removeWaxLine(String waxLine) {
    if (_waxLines.contains(waxLine) == true) {
      _waxLines.remove(waxLine);
      notifyListeners();
      savePreferences();
    }
  }

  savePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('units', _units);
    prefs.setStringList('waxLines', _waxLines);
  }

  loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String units = prefs.getString('units');
    List<String> waxLines = prefs.getStringList('waxLines');

    if (units != null) {
      setUnits(units);
    }
    if (waxLines != null) {
      _setWaxLines(waxLines);
    }
  }
}





// class SettingsProvider with ChangeNotifier {
//   String _units;
//   List<String> _waxlines;

//   SettingsProvider() {
//     _units = 'imperial';
//     _waxlines = ['swix', 'Toko'];
//   }

//   String get units {
//     return _units;
//   }

//   List<String> get waxLines {
//     return _waxlines;
//   }

//   void set units(String units) {
//     _units = units;
//     notifyListeners();
//   }

//   void set _waxLines(List<String> waxLines) {
//     _waxLines = waxLines;
//     notifyListeners();
//   }

//   void addwaxline(String waxLine) {
//     if (_waxlines.contains(waxLine) == false) {
//       _waxlines.add(waxLine);
//       notifyListeners();
//     }
//   }

//   void removewaxline(String waxLine) {
//     if (_waxlines.contains(waxLine) == true) {
//       _waxlines.remove(waxLine);
//       notifyListeners();
//     }
//   }

// }

