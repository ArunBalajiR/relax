import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relax/constants.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: kDarkBlue,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'About',
            style: GoogleFonts.raleway(
              fontSize: 30.0,
              color: kPrimaryBlue,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimaryBlue,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.share_rounded,
                color: kPrimaryBlue,
              ),
              onPressed: () {
                Share.share(
                    'Focus.! Relax.! Sleep.!\nTry Relax for better Productivity.\nAmbient Sounds to wash away distraction.\n https://example.com',
                    subject: 'Focus.! Relax.! Sleep.!');
              }),
        ],
      ),
      body: Container(
        color: kPrimaryBlue,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/ic_launcher.png'),
                radius: 75.0,
              ),
              SizedBox(
                height: 20.0,
                width: 80.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.headset, size: 100, color: Colors.white),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Ease of choosing and blending the ambient sounds into a mixture that will perfectly fit your mood.\n',
                        style: GoogleFonts.raleway(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Relax is an app that will allow you to concentrate on the work and increasing your productivity.',
                        style: GoogleFonts.raleway(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.eco, size: 100, color: Colors.white),
                ],
              ),
              Column(
                children: <Widget>[
                  RaisedButton(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        side: BorderSide(color: kDarkBlue),
                      ),
                      color: kDarkBlue,
                      child: ListTile(
                        leading: Icon(
                          Icons.bug_report,
                          color: kPrimaryBlue,
                        ),
                        title: Text(
                          "Report Bug",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      onPressed: () {
                        // debugPrint("clicked");
                        openURL("mailto:arunbalaji25062k@gmail.com");
                      }),
                  SizedBox(
                    height: 20.0,
                    width: 80.0,
                  ),
                  RaisedButton(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        side: BorderSide(color: kDarkBlue),
                      ),
                      color: kDarkBlue,
                      child: ListTile(
                        leading: Icon(
                          Icons.share,
                          color: kPrimaryBlue,
                        ),
                        title: Text(
                          "Share Application",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Share.share(
                            'Focus.! Relax.! Sleep.!\nTry Relax for better Productivity.\nAmbient Sounds to wash away distraction.\n https://example.com',
                            subject: 'Focus.! Relax.! Sleep.!');
                      }),
                  SizedBox(
                    height: 20.0,
                    width: 80.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  openURL(String url) {
    launch(url);
  }
}

// The purpose of this application is to be a study aid, allowing people to focus more effectively with the aid of ambience sound. This program is a clone of noisli developed for my personal offline use, however feel free to use it.',
