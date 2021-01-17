import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome to Flutter'),
        // ),
        body: WebView(
          initialUrl: "https://sis.fantasygeek11.com/dashboard",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
