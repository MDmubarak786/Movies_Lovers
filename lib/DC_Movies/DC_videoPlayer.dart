import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

import 'DC_Movie_Info.dart';

class DCVideoPlayerApp extends StatelessWidget {
  final trailer;
  DCVideoPlayerApp({this.trailer});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies' Lovers",
            style: TextStyle(
              fontFamily: "Marvel",
              fontSize: 30,
              color: Colors.white,
            )),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new DC_Movie_Info()));
              },
            );
          },
        ),
      ),
      body: WebView(
          javascriptMode: JavascriptMode.unrestricted, initialUrl: trailer),
    );
  }
}
