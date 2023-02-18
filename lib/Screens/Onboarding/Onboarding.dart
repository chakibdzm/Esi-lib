import 'package:esilib/Screens/AuthScreens/SigninScreen.dart';
import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final _controller = PageController();
  @override

  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(

      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return true;
        },
        child: PageView(
          controller: _controller,
          children: [
            Container(
              color:const Color(0xFF0A27E0) ,
              child: Stack(children: [
                Positioned(left: 0,
                  right: 0,child: Container(
                  height: getHeight(480),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(getHeight(45)))
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/illustrations/Prototyping process-rafiki.svg'),

                  ),

                ),
                ),
                Positioned(bottom: getHeight(40),
                  left: getWidth(20),child: InkWell(
                  onTap: ()
                  {

                    _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);




                  },
                  child: Container(
                    height: getHeight(50),
                    width: getWidth(150),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(getHeight(20))
                    ),
                    child: Center(
                      child: Text('Next !',
                      style: TextStyle(fontSize: getHeight(21),
                      fontWeight: FontWeight.w700,
                        color: Colors.black
                      ),),
                    ),
                  ),

                ),
                ),
                Positioned(left: getWidth(20),
                  bottom: getHeight(170),child: Text('Esi lib in your phone,\nWhy not!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: getHeight(30)
                ),


                ),
                ),
                Positioned(left: getWidth(20),
                  bottom: getHeight(115),child: const Text('We are here to improve your experience as student \nWithout searching and asking for Drives\nEverything you need is here !',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                )


              ]),
            ),
            Container(
                color :const Color(0xFF930AE0),
              child: Stack(children: [
                Positioned(left: 0,
                  right: 0,child: Container(
                  height: getHeight(480),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(getHeight(45)))
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/illustrations/Open source-amico.svg'),

                  ),

                ),
                ),
                Positioned(bottom: getHeight(40),
                  left: getWidth(20),child: InkWell(
                  onTap: () => _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut),
                  child: Container(
                    height: getHeight(50),
                    width: getWidth(150),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(getHeight(20))
                    ),
                    child: Center(
                      child: Text('Next !',
                        style: TextStyle(fontSize: getHeight(21),
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        ),),
                    ),
                  ),

                ),
                ),
                Positioned(left: getWidth(20),
                  bottom: getHeight(190),child: Text('Ready to learn more ?',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: getHeight(30)
                  ),


                ),
                ),
                Positioned(left: getWidth(20),
                  bottom: getHeight(130),child: const Text('Guess what not only this,We are adding a \nDeveloppers side by giving a roadmap and more',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                )

              ]),
            ),
            Container(
              color :const Color(0xB5EC0606),
              child: Stack(children: [
                Positioned(left: 0,
                  right: 0,child: Container(
                  height: getHeight(480),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(getHeight(45)))
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/illustrations/Metrics-pana.svg'),

                  ),

                ),
                ),
                Positioned(bottom: getHeight(40),
                  left: getWidth(20),child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Signin())),
                  child: Container(
                    height: getHeight(50),
                    width: getWidth(150),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(getHeight(20))
                    ),
                    child: Center(
                      child: Text('Sign-in',
                        style: TextStyle(fontSize: getHeight(21),
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        ),),
                    ),
                  ),

                ),
                ),
                Positioned(left: getWidth(20),
                  bottom: getHeight(190),child: Text('Let\'s study together',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: getHeight(30)
                  ),


                ),
                ),
                Positioned(left: getWidth(20),
                  bottom: getHeight(160),child: const Text('you are going to rock it this year',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                )

              ]),
            ),

          ],
        ),
      ),
    ));
  }
}
