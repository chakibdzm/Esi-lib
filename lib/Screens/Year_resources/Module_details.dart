import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';

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
                  child: Text('ksjdksdksdk,sdk,skd,skd,skd,skd,skd,sjfidgjdngdgddddddddddddddddddddddddddddddddffffdsfskdjgoizeoigjzioejfoizejiofzjeiogjeziogjzeiogjiozegjiozejgiozejgoeikdjviozejgiozejgiozejgiozejgizeklncklzsnfknzknckzcklnsklcnksnckqscklqslkcnqskcnklxnckqsnckqsnckqsncklqsnclknqslc;,qskcnqskfnqsknqlksnflkqsnflkqskdnkzdngkzngdddddddddddd',
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
                              module_name=='Module'
                              ? const  Icon(Icons.play_circle_rounded,color: Colors.red,)
                              :const Icon(Icons.book,color:Colors.green,),
                              SizedBox(width: getWidth(10),),
                              Text(module_name,
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

            ],
          ),
        ),
      ),
    );
  }
}
