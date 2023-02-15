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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(20),
              ),
              Text(
                'TITLE_OF_Article',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: getHeight(
                      21,
                    )),
              ),
              SizedBox(
                height: getHeight(15),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(getHeight(20)),
                  child: SvgPicture.asset(
                      'assets/illustrations/Python-logo-notext.svg'),
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
                  child: Text(
                    'here in this box we going to explain and introduct this thing and give adv and inc its just a test text so i can see how does it works see you next time with diff text ',
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
                    color: Colors.black,
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
                      scrollDirection: Axis.vertical,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) =>
                          InkWell(
                            child: Row(
                              children: [
                                const  Icon(Icons.play_circle_rounded,color: Colors.red,),
                                SizedBox(width: getWidth(10),),
                                Text('name here',
                                  style: TextStyle(
                                      fontSize: getHeight(15),
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
    );
  }
}
