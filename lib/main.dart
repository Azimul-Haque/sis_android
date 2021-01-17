import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../globals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(
      content: Text(textForSnackbar),
    );
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome to Flutter'),
        // ),
        body: SafeArea(
          child: WebView(
            initialUrl: "https://sis.fantasygeek11.com/dashboard",
            javascriptMode: JavascriptMode.unrestricted,
            onWebResourceError: ,
          ),
        ),
      ),
    );
  }
}
