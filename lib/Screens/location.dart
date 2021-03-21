import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class location extends StatefulWidget {
  @override
  _locationState createState() => _locationState();
}

class _locationState extends State<location> {
  String _locationMessage = "";
  double lat, lng;
  void _getCurrentLocation() async {
    print("zzzzzzzzzzzzzzzzzzzzzzzzzzz");
    final position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print("Sssssssxxxxxxxxxyyyyyyyzzzzzzzzzmmmmmmmmm");
    print(position);
    lat = position.latitude.toDouble();
    lng = position.longitude.toDouble();
    print("$lat ....$lng");

    setState(() {
      _locationMessage = "${position.latitude}, ${position.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Location Services")),
        body: Align(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_locationMessage),
                FlatButton(
                    onPressed: () {
                      _getCurrentLocation();
                    },
                    color: Colors.green,
                    child: Text("Find Location"))
              ]),
        ));
  }
}
