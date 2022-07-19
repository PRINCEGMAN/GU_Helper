import 'package:flutter/material.dart';

class mycourse extends StatefulWidget {
  const mycourse({Key key}) : super(key: key);

  @override
  State<mycourse> createState() => _mycourseState();
}

class _mycourseState extends State<mycourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            color: Colors.blue,

          )
        ],
      ),
    );
  }
}
