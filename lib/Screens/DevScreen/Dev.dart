import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DevPage extends StatefulWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  List<Map<String,String>>dev=[
    {
      'title':'Flutter Zero to Hero',
      'photo':'assets/illustrations/Google-flutter-logo.svg'
    },
    {
      'title':'why laravel in 2022',
      'photo':'assets/illustrations/laravel-2.svg',
    },
    {
      'title':'Firebase for first projects ?',
      'photo':'assets/illustrations/firebase-ar21.svg',
    },
    {
      'title': 'Native or cross ?',
'photo':'assets/illustrations/java-icon.svg',
    },
    {
      'title':'what does python do for me ?',
      'photo':'assets/illustrations/Python-logo-notext.svg',
    },
    {
      'title':'Flutter or React Native ?',
      'photo':'assets/illustrations/react-native-1.svg',

    },
    {
      'title':'looking for fullstack Back-end ?',
      'phot':'assets/illustrations/Django_logo.svg',
    }

  ];


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double _w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color(0xFF0A27E0),

        body:AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(_w / 30),
            physics:
            BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: dev.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  verticalOffset: -250,
                  child: ScaleAnimation(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: Stack(
                      children: [
                        Positioned(child: Container(
                          margin: EdgeInsets.only(bottom: _w / 20),
                          height: _w / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 40,
                                spreadRadius: 10,
                              ),
                            ],
                          ),
                        ),),
                        Positioned(child: Text(dev[index]['title'].toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getHeight(20),
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        top: getHeight(25),
                          left: getWidth(120),
                        ),
                        Positioned(child: Container(
                          height: 80,
                          width: 100,
                          child: SvgPicture.asset(dev[index]['photo'].toString(),


                            ),
                          ))
                        ],
                      )
                    ),
                  ),
                );
              },
            ),
          ),
        )



    );
  }
}
