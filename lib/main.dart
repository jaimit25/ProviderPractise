import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractise/Screens/AudioUpload.dart';
import 'package:providerpractise/Screens/LoginPage.dart';
import 'package:providerpractise/Screens/Practising%20Provider/ProPractise.dart';
import 'package:providerpractise/Screens/Practising%20Provider/Providerpractise.dart';
import 'package:providerpractise/Screens/Ui/BottomSheet.dart';
import 'package:providerpractise/Screens/Ui/DialogBoxCode.dart';
import 'package:providerpractise/Screens/Upload.dart';
import 'package:providerpractise/Screens/VideoApp.dart';
import 'package:providerpractise/Screens/Wax_App/Providers/Settings_Provider.dart';
import 'package:providerpractise/Screens/Wax_App/Screens/Home.dart';
import 'package:providerpractise/Screens/location.dart';
//database Ecommerce

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: DialogBoxCode(),
//     );
//   }
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (BuildContext context) => SettingsProvider(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.deepPurple,
//           accentColor: Colors.deepOrangeAccent,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//         home: Home(),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProPractise(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProviderPractise(),
      ),
    );
  }
}
