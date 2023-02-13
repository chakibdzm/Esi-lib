import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
class ResourcesPage extends StatefulWidget {
  const ResourcesPage({Key? key}) : super(key: key);

  @override
  State<ResourcesPage> createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<ResourcesPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(25),),
            Padding(
              padding: EdgeInsets.only(left: getWidth(20)),
              child: Text('The_Selected_Year',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: getHeight(21),
              ),

              ),
            ),
            SizedBox(height: getHeight(15),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              child: Container(
                height: getHeight(180),
                width: getWidth(375),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(getHeight(20))
                ),
              ),
            ),
            SizedBox(height: getHeight(15),),
      Padding(
        padding: EdgeInsets.only(left: getWidth(20)),
        child: Text('Modules',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: getHeight(21),
          ),
        )
      ),


          ],
        ),
      ),
    );
  }
}
