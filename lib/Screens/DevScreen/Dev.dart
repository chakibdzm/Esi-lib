
import 'package:esilib/Screens/DevScreen/ListOf_resources.dart';
import 'package:esilib/Screens/DevScreen/article_components.dart';
import 'package:esilib/Screens/controllers/articlesController.dart';
import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class DevPage extends StatefulWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  ArtController _secondaryIndex= Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double _w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body:Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [ Color(0xff00bcd4), Color(0xff22133c)],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              )
          ),
          child: AnimationLimiter(
            child: ListView.builder(
              padding: EdgeInsets.all(_w / 30),
              physics:
              const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    _secondaryIndex.ind=index;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ArticlePage()),
                    );
                  },
                  child: AnimationConfiguration.staggeredList(
                    position: index,
                    delay: const Duration(milliseconds: 100),
                    child: SlideAnimation(
                      duration: const Duration(milliseconds: 2500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      verticalOffset: -250,
                      child: ScaleAnimation(
                        duration: const Duration(milliseconds: 1500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: Stack(
                          children: [
                            Positioned(child: Container(
                              margin: EdgeInsets.only(bottom: _w / 20),
                              height: _w / 4,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 40,
                                    spreadRadius: 10,
                                  ),
                                ],
                              ),
                            ),),
                            Positioned(top: getHeight(25),
                              left: getWidth(120),
                              right: getWidth(3),child: Text(articles[index]['name'].toString(),
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                              fontSize: getHeight(20),
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            ),
                            Positioned(
                                top: getHeight(10),
                                left: getWidth(10),
                                child: SizedBox(
                              height: getHeight(80),
                              width: getWidth(80),
                              child: SvgPicture.asset(articles[index]['image'].toString(),


                                ),
                              ))
                            ],
                          )
                        ),
                      ),
                    ),
                );
                },
              ),
            ),
        ),
        )



    );
  }
}
