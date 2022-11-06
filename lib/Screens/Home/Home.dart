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
                  Text('Hello !....',
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
                        color: Color(0xFF0A27E0),
                        borderRadius: BorderRadius.circular(getHeight(20))

                    ),
                  ),
                ),
                Positioned(child: Text ('Looking for DEV ?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getHeight(20),
                  fontWeight: FontWeight.w500
                ),
                ),
                top: getHeight(20),
                  left: getWidth(15),
                ),
                Positioned(child: Text('clearly everyone wants to dev his \nexperience and have a nice portfolio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getHeight(16),
                ),

                ),
                left: getWidth(15),
                  top: getHeight(50),
                ),
                Positioned(child: InkWell(
                  child: Container(
                    height: getHeight(35),
                    width: getWidth(80),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(getHeight(18)),
                    ),
                    child: Center(child: Text('Explore',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: getHeight(14),
                    ),
                    ),),
                  ),
                ),
                bottom: getHeight(25),
                  right: getWidth(20),
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
        Container(
          height: getHeight(95),
          width: getWidth(375),
          decoration: BoxDecoration(
            color: Color(0xFF0A27E0),
            borderRadius: BorderRadius.circular(getHeight(18)),
          ),

          child: Center(child: Text(module[index].toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: getHeight(19),
          ),

          ),),
        )

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
