import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Termsandcondition extends StatefulWidget {
  @override
  _TermsandconditionState createState() => _TermsandconditionState();
}

class _TermsandconditionState extends State<Termsandcondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                  child: Text(
                    "Terms & Conditions",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ),
              ),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.ac_unit),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: 900,
        width: MediaQuery.of(context).size.width / 0.60,
        child: const WebView(
          initialUrl: 'https://www.aptismart.com/terms-conditions',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
