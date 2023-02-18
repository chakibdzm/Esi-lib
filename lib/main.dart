import 'package:esilib/Screens/SplashScreen/Spalshscreen.dart';
import 'package:esilib/Screens/controllers/articlesController.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ArtController());
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Esilib',
      theme: ThemeData(
        fontFamily: 'GTWalsheimPro',
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home: MyWidget(),
    );
  }
}