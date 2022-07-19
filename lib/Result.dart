import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:webview_flutter/webview_flutter.dart';
class Result extends StatefulWidget {
  const Result({Key key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Result"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://www.princegajjar.rf.gd/',
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish){
              setState(() {
                isLoading=false;
              });
            },
          ),
          isLoading?Center(child: Lottie.network('https://assets10.lottiefiles.com/packages/lf20_hxart9lz.json'),):Stack(),
        ],
      ),

    );
  }
}

