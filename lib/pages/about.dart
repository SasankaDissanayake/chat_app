import 'package:flutter/material.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("About App"),
          backgroundColor: Colors.transparent,
        ),
        body: const Row(children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Developed by Sasanka Dissanayake.   5/19/24"),
          ),
        ]));
  }
}
