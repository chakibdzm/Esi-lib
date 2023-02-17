import 'package:esilib/Screens/DevScreen/ListOf_resources.dart';
import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key? key}) : super(key: key);

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
                    articles[0]['name'].toString(),
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
                      height: getHeight(100),
                      width: getWidth(400),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: SvgPicture.asset(
                            articles[0]['image'],
                          width: getHeight(300),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(15),
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
                      child: Text(articles[0]['article'].toString(),
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
                          itemCount: 11,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) =>
                              InkWell(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(articles[0]['resources'][index]['icon'],
                                    height: getHeight(30),
                                    ),
                                    SizedBox(width: getWidth(10),),
                                    SelectableText( articles[0]['resources'][index]['id']==1  ?articles[0]['resources'][index]['youtube'].toString() :articles[0]['resources'][index]['insta'].toString(),
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


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
