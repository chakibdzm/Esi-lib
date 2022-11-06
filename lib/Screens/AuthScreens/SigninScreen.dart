import 'package:esilib/Screens/Home/Home.dart';
import 'package:esilib/Validators.dart';
import 'package:esilib/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final emailPassFormKey = GlobalKey<FormState>();
  final passFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFF0A27E0),
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: getHeight(390),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(getHeight(35),
                    ),
                    bottomLeft: Radius.circular(getHeight(35)))
                  ),
                  
                ),
                Positioned(child: SvgPicture.asset('assets/illustrations/Friends singing Christmas Carol-rafiki.svg')),
                Positioned(child: Text('Sign in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getHeight(26),
                  fontWeight: FontWeight.w700,
                ),
                ),
                left: getWidth(150),
                  bottom: getHeight(60),
                ),

                


                
                
              ],
            ),
            
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:getWidth(25) ),
              child: Form(
                key: emailPassFormKey,
                child: TextFormField(

                  style: TextStyle(
                    fontFamily: 'GTWalsheimPro',
                    fontWeight: FontWeight.w500,
                    fontSize: getHeight(20),
                    color: Colors.white,
                  ),

                  cursorColor: Color(0xFF9DA3B6),

                 validator: schoolMailValidator(),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFF2F2F2),
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: getHeight(20),
                        horizontal: getWidth(20)),
                    prefixIconConstraints: const BoxConstraints(maxHeight: 25),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        )),
                    fillColor:Color(0xFF2F2F2),
                    filled: true,
                    hintText: 'Email',

                    hintStyle: TextStyle(
                      fontFamily: 'GTWalsheimPro',
                      fontSize: getHeight(16),
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    suffixIcon:
                    Container(
                      width: getWidth(75),
                      height: getHeight(53),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getHeight(20)),
                        color: Colors.white,
                      ),
                      child: Center(child: Icon(Icons.email,color:Color(0xFF0A27E0) ,)),
                    ),

                  ),
                ),
              ),
            ),
            SizedBox(height: getHeight(15),),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:getWidth(25) ),
              child: Form(
                key: passFormKey,
                child: TextFormField(

                  style: TextStyle(
                    fontFamily: 'GTWalsheimPro',
                    fontWeight: FontWeight.w500,
                    fontSize: getHeight(20),
                    color: Colors.white,
                  ),

                  cursorColor: Color(0xFF9DA3B6),
validator: passwordValidator(),
                obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFF2F2F2),
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: getHeight(20),
                        horizontal: getWidth(20)),
                    prefixIconConstraints: const BoxConstraints(maxHeight: 25),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        )),
                    fillColor:Color(0xFF2F2F2),
                    filled: true,
                    hintText: 'Password',

                    hintStyle: TextStyle(
                      fontFamily: 'GTWalsheimPro',
                      fontSize: getHeight(16),
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    suffixIcon:
                    Container(
                      width: getWidth(75),
                      height: getHeight(53),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getHeight(20)),
                        color: Colors.white,
                      ),
                      child: Center(child: Icon(Icons.key,color:Color(0xFF0A27E0) ,)),
                    ),

                  ),
                ),
              ),
            ),
            SizedBox(height: getHeight(15),),
            InkWell(

              onTap: () => {

                      if ((emailPassFormKey.currentState!.validate()) && (passFormKey.currentState!.validate())){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        )
                      }


              },

              child: Container(
                height: getHeight(60),
                width: getWidth(140),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(getHeight(20)),
                  bottomLeft: Radius.circular(getHeight(20))
                  )
                ),
                child: Center(
                  child: Text('Sign in',
                  style: TextStyle(
                    color: Color(0xFF0A27E0),
                    fontWeight: FontWeight.w600,
                    fontSize: getHeight(20)
                  ),
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
