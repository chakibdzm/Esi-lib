import 'package:esilib/Screens/DevScreen/Dev.dart';
import 'package:esilib/Screens/Feedback/Feeds_back.dart';
import 'package:esilib/Screens/Home/Home.dart';
import 'package:esilib/Screens/Profile/My_Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomNav extends StatefulWidget {
  @override
  BottomNavState createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  var currentIndex = 0;
  List<Widget> screens=[
    const HomePage(),
    const DevPage(),
    const MyProfile(),
    const FeedPage(),
  ];



  @override
  Widget build(BuildContext context) {







    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(5),
        height: screenWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: screens.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                SizedBox(
                  width: screenWidth * .2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? screenWidth * .12 : 0,
                      width: index == currentIndex ? screenWidth * .2125 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Color(0xFFEC6FFD).withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * .2125,
                  alignment: Alignment.center,
                  child: Icon(
                    listOfIcons[index],
                    size: screenWidth * .076,
                    color: index == currentIndex
                        ? Color(0xFF0518C2).withOpacity(0.9)
                        : Colors.black26,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: screens[currentIndex],

    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.code,
    Icons.person_rounded,
    Icons.info,
  ];
}




