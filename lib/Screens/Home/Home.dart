import 'package:animations/animations.dart';
import 'package:esilib/Colors.dart';
import 'package:esilib/Screens/DevScreen/tet.dart';
import 'package:esilib/Screens/Year_resources/Resources_screen.dart';
import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>module=[
    '1 CP',
    '2 CP',
    '1 CS',
    '2 CS ISI',
    '2 CS SIW',
    '3 CS'
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(36),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
              child: Row(
                children: [
                  const Text('Hello !....',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700

                  ),
                  ),
                  SizedBox(width: getWidth(190),),
                  CircleAvatar(child: SvgPicture.asset('assets/illustrations/Profile pic-rafiki.svg'),)
                ],
              ),
            ),

            SizedBox(height: getHeight(20),),
            Padding(padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: getHeight(176),
                    width: getWidth(375),
                    decoration: BoxDecoration(
                        gradient: RoseBgradient,
                        borderRadius: BorderRadius.circular(getHeight(20))

                    ),
                  ),
                ),
                Positioned(top: getHeight(20),
                  left: getWidth(15),child: Text ('Looking for DEV ?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getHeight(20),
                  fontWeight: FontWeight.w500
                ),
                ),
                ),
                Positioned(left: getWidth(15),
                  top: getHeight(50),child: Text('clearly everyone wants to dev his \nexperience and have a nice portfolio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getHeight(16),
                ),

                ),
                ),
                Positioned(bottom: getHeight(25),
                  right: getWidth(20),child:
                OpenContainer(
                  closedBuilder: (_, openContainer) {
                    return SizedBox(
                      height: 40,
                      width: 100,
                      child: Center(
                        child: InkWell(
                          onTap: openContainer,
                          child: Text('Explore',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getHeight(16),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    );
                  },
                  openColor: Colors.white,
                  closedElevation: 50.0,
                  closedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  closedColor: Colors.white,
                  openBuilder: (_, closeContainer) {
                    return SecondScreen();
                  }
                ),
                )
              ],
            )

            ),
            SizedBox(height: getHeight(20),),

            Padding(
              padding:EdgeInsets.only(left: getWidth(25)),
              child: Text('Courses & resources',
              style: TextStyle(
                fontSize: getHeight(19),
                fontWeight: FontWeight.w700,
              ),
              
              ),
            ),
            SizedBox(height: getHeight(15),),
        Expanded(
        child: Padding(padding: EdgeInsets.only(left: getWidth(25),right: getWidth(25)),
    child:  Flexible(
    child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return true;
        },
      child: ListView.separated(

      separatorBuilder: (BuildContext context, int index) {
      return SizedBox(
      height: getHeight(15),
      );
      },
      scrollDirection: Axis.vertical,
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) =>
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ResourcesPage()),
              );
            },
            child: Container(
              height: getHeight(95),
              width: getWidth(375),
              decoration: BoxDecoration(
                gradient: RoseBgradient,
                borderRadius: BorderRadius.circular(getHeight(18)),
              ),

              child: Center(child: Text(module[index].toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: getHeight(19),
              ),

              ),),
            ),
          )

      ),
    ),
    ),
        ),
        ),


            

          ],
        ),
      ),
    );
  }
}
