import 'package:esilib/Colors.dart';
import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final _controllerSupport=TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: Scaffold(
      body: Padding(
        padding:EdgeInsets.symmetric(
            horizontal: getWidth(20)),
        child: SingleChildScrollView(
          child: SizedBox(
            height: getHeight(700),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getHeight(20),),
                Text('Tell Us About ?',
                style: TextStyle(
                  color: const Color(0xFF0A27E0),
                  fontSize: getHeight(25),
                  fontWeight: FontWeight.w800,
                ),
                ),
                SizedBox(height: getHeight(15),),
                Container(height: getHeight(230),
                decoration: BoxDecoration(
                  gradient: bluePgradient,
                  borderRadius: BorderRadius.circular(getHeight(20))

                ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: getWidth(10)),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: getHeight(18),
                      ),
                      controller: _controllerSupport ,
                      maxLength: 500,
                      autofocus: false,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      validator: (val) {
                        if (val!.isEmpty) return "Required";
                        if (val.length < 10) {
                          return "Your feedback must be more than 10 words";
                        }
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write...',
                        hintStyle: TextStyle(
                          color: Colors.white,

                        )

                      ),
                    ),
                  ),
                ),
                SizedBox(height: getHeight(60),),
                Padding(
                  padding: EdgeInsets.only(left:getWidth(132)),
                  child: InkWell(
                    child: Container(
                      height: getHeight(100),
                      width: getWidth(200),
                      decoration: BoxDecoration(
                          gradient: bluePgradient,
                          borderRadius: BorderRadius.circular(getHeight(20))

                      ),
                      child: Center(child: Text('Send !',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: getHeight(21)
                      ),
                      ),),

                    ),

                  ),
                ),
                const Spacer(),
                Text('here you can type what are the stuff that we did not make it ',
                style: TextStyle(
                  fontSize: getHeight(18),
                  fontWeight: FontWeight.w700
                ),
                ),
                SizedBox(height: getHeight(10),),

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
