import 'package:esilib/Screens/DevScreen/Dev.dart';
import 'package:esilib/Screens/DevScreen/tet.dart';
import 'package:esilib/Screens/Home/Home.dart';
import 'package:esilib/Screens/Onboarding/Onboarding.dart';
import 'package:esilib/Screens/SplashScreen/Spalshscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      ]);
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
      home:MyWidget(),
    );
  }
}