import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

final String _url = "https://bit.ly/31ctIY3";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  _subscribeUsOnYoutube() async {
    if (await canLaunch(_url)) {
        launch(_url);
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Demo launch screen!")),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16),
          child: Column(
              children: <Widget>[
                Text("Chúc mừng bạn đã đến với Việt Flutter"),
                FlatButton(
                  child: Text("Subscribe", style: TextStyle(color: Colors.white),),
                  onPressed: _subscribeUsOnYoutube,
                  color: Colors.red,
                )
              ],
          ),
        ),
      )
    );
  }
}
