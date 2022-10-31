import 'package:esilib/Screens/Onboarding/Onboarding.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Esilib',
      theme: ThemeData(
        fontFamily: 'GTWalsheimPro',
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home:Onboarding(),
    );
  }
}