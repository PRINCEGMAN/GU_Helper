import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webview_flutter/webview_flutter.dart';
class candidate extends StatefulWidget {
  const candidate({Key key}) : super(key: key);

  @override
  State<candidate> createState() => _candidateState();
}

class _candidateState extends State<candidate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Candidate List"),
      ),
      body:WebView(
        initialUrl: 'http://result.gujaratuniversity.ac.in/',
        javascriptMode: JavascriptMode.unrestricted,

      )

    );
  }
}
