import 'package:esilib/Screens/DevScreen/ListOf_resources.dart';
import 'package:esilib/Screens/controllers/articlesController.dart';
import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  ArtController _secondaryIndex= Get.find();



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowGlow();
              return true;
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getHeight(20),
                  ),
                  Text(
                    articles[_secondaryIndex.ind!]['name'].toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: getHeight(
                          21,
                        )),
                  ),
                  SizedBox(
                    height: getHeight(15),
                  ),
                  Center(
                    child: SizedBox(
                      height: getHeight(150),
                      width: getWidth(200),
                      child: SvgPicture.asset(
                          articles[_secondaryIndex.ind!]['image'],
                        width: getHeight(300),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  Container(
                    constraints: const BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(getHeight(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 9, // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getWidth(10), vertical: getHeight(12)),
                      child: Text(articles[_secondaryIndex.ind!]['article'].toString(),
                        style: TextStyle(
                          fontSize: getHeight(16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(15),
                  ),
                  Text(
                    'Resources',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: getHeight(
                          21,
                        )),
                  ),
                  SizedBox(height: getHeight(15),),
                  Container(
                    constraints: const BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    width: getWidth(375),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(getHeight(20)),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: getWidth(13),
                          vertical: getHeight(15)),
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: getHeight(15),
                            );
                          },
                          itemCount: articles[_secondaryIndex.ind!]['resources'].length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) =>
                              InkWell(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(articles[_secondaryIndex.ind!]['resources'][index]['icon'],
                                    height: getHeight(30),
                                    ),
                                    SizedBox(width: getWidth(10),),
                                    SelectableText( articles[_secondaryIndex.ind!]['resources'][index]['id']==1  ?articles[_secondaryIndex.ind!]['resources'][index]['youtube'].toString() :articles[_secondaryIndex.ind!]['resources'][index]['insta'].toString(),
                                      style: TextStyle(
                                          fontSize: getHeight(16),
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                  ],
                                ),
                              )
                      ),
                    ),
                  ),
                  SizedBox(height: getHeight(20),),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
