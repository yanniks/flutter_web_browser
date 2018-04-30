import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:flutter_web_browser/flutter_web_browser.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  openBrowserTab() async {
    var page = FlutterWebBrowser.openWebPage(url: "https://flutter.io/", androidToolbarColor: Colors.deepPurple);
    await new Future.delayed(const Duration(seconds: 3));
    await FlutterWebBrowser.closeWebPage();
    await page;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Plugin example app'),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () => openBrowserTab(),
            child: new Text('Open Flutter website'),
          ),
        ),
      ),
    );
  }
}
