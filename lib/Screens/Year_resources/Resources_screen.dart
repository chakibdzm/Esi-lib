import 'package:esilib/Screens/Year_resources/List_Modules.dart';
import 'package:esilib/Screens/Year_resources/Module_details.dart';
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
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowGlow();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getHeight(25),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getWidth(20)),
                  child: Text(
                    modules[0]['year'],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: getHeight(21),
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(15),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxHeight: double.infinity
                    ),
                    width: getWidth(375),
                    decoration: BoxDecoration(
                        color: const Color(0xff0c82df),
                        borderRadius: BorderRadius.circular(getHeight(20))),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: getWidth(10),vertical: getHeight(20)),
                    child: Text(modules[0]['article'],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: getHeight(18),
                    ),
                    ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(15),
                ),
                Padding(
                    padding: EdgeInsets.only(left: getWidth(20)),
                    child: Text(
                      'Modules',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: getHeight(21),
                      ),
                    )),
                SizedBox(height: getHeight(13),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxHeight: double.infinity
                    ),
                    width: getWidth(375),
                    decoration: BoxDecoration(
                      color: const Color(0xff0c82df),
                      borderRadius: BorderRadius.circular(getHeight(20)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: getWidth(10),right: getHeight(10),
                      top: getHeight(10),bottom: getHeight(10)),
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: getHeight(15),
                            );
                          },
                          scrollDirection: Axis.vertical,
                          itemCount: modules[0]['modules'].length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) =>
                              SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const ModuleDetails()),
                                        );
                                      },
                                      child: Container(
                                        height: getHeight(70),
                                        width: getWidth(375),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(getHeight(20)),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(left: getWidth(12),
                                              top: getHeight(20)),
                                          child: Text(modules[0]['modules'][index]['name'],
                                            style: TextStyle(
                                                fontSize: getHeight(18),
                                                fontWeight: FontWeight.w600
                                            ),),
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getHeight(20),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
