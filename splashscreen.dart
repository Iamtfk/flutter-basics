// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

import 'package:test/frontpage.dart';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
              child: frontpage(),
              type: PageTransitionType.fade,
              childCurrent: widget,
              duration: Duration(
                milliseconds: 1000,
              ),
              reverseDuration: Duration(milliseconds: 600),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 2, 65),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 250,
                  child: Image.asset('assets/logoo.png'),
                )
              ],
            ),
          ),
        ));
  }
}
