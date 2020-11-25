import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:flutter/services.dart';
import 'package:relax/index.dart';
import 'package:relax/developer_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: "RelaX",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 20.0,
          backgroundColor: Color(0xFF001E3D),
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Relax',
              style: GoogleFonts.raleway(
                fontSize: 30.0,
                color: Color(0xFF55b9f3),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.info_outline,
                  color: Color(0xFF55b9f3),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                }),
          ],
        ),
        body: Index(),
      ),
    );
  }
}

// todo: about developer,report bug,clone this app,request feauture,etc
// github starred repo like video simulation
// help to get add more sound by sending sources and queries and contact etc..
//todo : to inmlement share app sentence
