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
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(child: Container(
            height: getHeight(250),
            width: getWidth(375),
            decoration: BoxDecoration(
               gradient: const LinearGradient(
                  colors:  [Color(0xfffcdbe6), Color(0xff3dc1fd)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),

                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(getHeight(35)),
              bottomRight: Radius.circular(getHeight(35))),
            ),

          )),
          Positioned(top: getHeight(120),
            left: getWidth(45),child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child:SizedBox(
                        height: getHeight(220),
                        width: getWidth(180),

                        child: Image.asset('assets/illustrations/16351120_rm324-element-baifernn-05.jpg')),
                  ),
                ),
                SizedBox(height: getHeight(10),),
                Row(
                  children: [
                    Text('Chakib ouchene',
                    style: TextStyle(
                      fontSize: getHeight(18),
                      fontWeight: FontWeight.w700
                    ),
                    ),
                    SizedBox(width: getWidth(5),),
                    SvgPicture.asset('assets/illustrations/Date Decoration.svg',
                    height: getHeight(20),
                    ),
                    SizedBox(width: getWidth(5),),
                    Text('1CS',
                      style: TextStyle(
                          fontSize: getHeight(18),
                          fontWeight: FontWeight.w700
                      ),
                    ),

                  ],
                )
              ],
              )
          ),
          Positioned(
              top: getHeight(300),
              left: getWidth(190),
              child: const InkWell(child:  Icon(Icons.add_circle_rounded,
          color: Color(0xFF1316BF),
          ),)),
          Positioned(
              top: getHeight(30),
              right: getWidth(20),
              child: InkWell(

            child: Container(
              height: getHeight(70),
              width: getWidth(55),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(getHeight(20))
              ),
              child: Center(
                child: Icon(Icons.dark_mode_outlined,color: Colors.white,size: getHeight(35),),
              ),
            ),
          ))

        ],
      ),

    );
  }
}
