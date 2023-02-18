
import 'dart:async';
import 'package:esilib/Screens/DevScreen/Dev.dart';
import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _a = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 700), () {
      setState(() {
        _a = !_a;
      });
    });
    Timer(const Duration(milliseconds: 2000), () {
      Navigator.of(context)
          .pushReplacement(SlideTransitionAnimation(const DevPage()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 2000),
            curve: Curves.fastLinearToSlowEaseIn,
            width: _a ? _width : 0,
            height: _height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [ Color(0xff00bcd4), Color(0xff22133c)],
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
    )

    ),
          ),
          const Center(
            child: Text(
              'Welcome to The DevTeam',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color:  Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideTransitionAnimation extends PageRouteBuilder {
  final Widget page;

  SlideTransitionAnimation(this.page)
      : super(
      pageBuilder: (context, animation, anotherAnimation) => page,
      transitionDuration: const Duration(milliseconds: 2000),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
        animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
        );
        return SlideTransition(
          position: Tween(begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0))
              .animate(animation),
          textDirection: TextDirection.rtl,
          child: page,
        );
      });
}
