import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  var materialApp = MaterialApp(
    title: 'Site Inventory',
    theme: ThemeData(
        // primarySwatch: Colors.green,
        // fontFamily: 'Kalpurush',
        ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
    },
  );
  return runApp(materialApp);
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(
      content: Text(textForSnackbar),
    );
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Welcome to Flutter'),
      // ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://sis.fantasygeek11.com/dashboard",
          javascriptMode: JavascriptMode.unrestricted,
          onWebResourceError: _showSnackbar("No Connection!"),
        ),
      ),
    );
  }
}
