import 'package:esilib/Screens/Year_resources/List_Modules.dart';
import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ModuleDetails extends StatefulWidget {
  const ModuleDetails({Key? key}) : super(key: key);

  @override
  State<ModuleDetails> createState() => _ModuleDetailsState();
}

class _ModuleDetailsState extends State<ModuleDetails> {
  String module_name='Modulee';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(20),
              ),
              Text(modules[0]['modules'][0]['name'],
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: getHeight(21)
                ),
              ),
              SizedBox(height: getHeight(18),),



              Container(
                constraints: const BoxConstraints(
                  maxHeight: double.infinity,
                ),
                width: getWidth(375),
                decoration: BoxDecoration(color: const Color(0xFF0A27E0),
                borderRadius: BorderRadius.circular(getHeight(20)),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: getWidth(13),
                  vertical: getHeight(15)),
                  child: Text(modules[0]['modules'][0]['article'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getHeight(18),
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
              ),
              SizedBox(height: getHeight(15),),
              Text('Resources',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: getHeight(21),
              ),
              ),
              SizedBox(height: getHeight(15),),

              Container(
                constraints: const BoxConstraints(
                  maxHeight: double.infinity,
                ),
                width: getWidth(375),
                decoration: BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.circular(getHeight(20)),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: getWidth(13),
                      vertical: getHeight(15)),
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
                        itemCount: resources.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) =>
                          InkWell(
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/illustrations/icons8-youtube.svg',
                                height: getHeight(32),
                                ),
                                SizedBox(width: getWidth(10),),
                                Text(resources[index],
                                style: TextStyle(
                                  fontSize: getHeight(15),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                                ),
                                )
                              ],
                            ),
                          )
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
