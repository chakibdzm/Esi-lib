import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(child: Container(
            height: getHeight(250),
            width: getWidth(375),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(getHeight(20)),
              bottomRight: Radius.circular(getHeight(20))),
            ),
            child: FittedBox(
              child: SvgPicture.asset('assets/illustrations/pfp.svg'),
              fit: BoxFit.fill,

            ),

          )),
          Positioned(child: Container(
            height: getHeight(210),
            width: getWidth(160),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getHeight(20))
            ),
            child: FittedBox(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SvgPicture.asset('assets/illustrations/pfp.svg')),
              fit: BoxFit.fill,

            ),
          ),
          top: getHeight(120),
            left: getWidth(45),
          ),
          Positioned(child: Container(
            height: getHeight(370),
            width: getWidth(350),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(getHeight(20))
            ),
             child: Padding(
               padding: EdgeInsets.only(left: getWidth(13)),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: getHeight(40),),
                   Text('Name :',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: getHeight(20),
                     fontWeight: FontWeight.w700
                   ),
                   ),
                   SizedBox(height: getHeight(13),),
                   Text('Year :',
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: getHeight(20),
                         fontWeight: FontWeight.w700
                     ),
                   ),
                   SizedBox(height: getHeight(13),),
                   Text('Skills :',
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: getHeight(20),
                         fontWeight: FontWeight.w700
                     ),
                   ),
                   Spacer(),
                   Padding(
                     padding: EdgeInsets.only(left: getWidth(190)),
                     child: InkWell(
                       child: Text('Edit your profile',
                       style: TextStyle(
                         fontSize: getHeight(18),
                         fontWeight: FontWeight.w600,
                       ),
                       ),
                     ),
                   ),
                   SizedBox(height: getHeight(20),),


                 ],
               ),
             ),
          ),
          top: getHeight(350),
            left: getWidth(12),
          
          )
        ],
      ),

    );
  }
}
