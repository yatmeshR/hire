// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'BottomBar.dart';
import 'data.dart';
import 'functions.dart';

class BlankScreen extends StatefulWidget {
  const BlankScreen();

  @override
  State<BlankScreen> createState() => _BlankScreenState();
}

class _BlankScreenState extends State<BlankScreen> {
  @override
  //ignore supper_call
  initState() {
    // super.initState();
    print("initState Called");
    call();
  }

  void call() async {
    print('call ho gaya');
    int x = await fetchSkillsFromDatabase();
    // int y = await fetchInternships();
    // Future.delayed(Duration(seconds: 7), () {
    //   print('yessir');
    // });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => BottomBar(
                    si: 0,
                  )));
    });

    return Container(
      padding: EdgeInsets.only(top: 350.0),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Loading',
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20.0,
          ),
          CircularProgressIndicatorApp(),
        ],
      ),
    );
  }
}

class CircularProgressIndicatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.black,
      strokeWidth: 8,
    );
  }
}
