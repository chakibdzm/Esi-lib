
import 'package:esilib/Bottom_nav_bar/Bottom_nav_bar.dart';
import 'package:esilib/Screens/AuthScreens/SignUpScreen.dart';
import 'package:esilib/Validators.dart';
import 'package:esilib/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/Email.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signIn() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,

      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => BottomNav()));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: const Color(0xFF1C0BB4),
          content: Text('Welcome Sir',
            style: TextStyle(
                fontSize: getHeight(16),
                fontWeight: FontWeight.w700
            ),
          ),
          duration: const Duration(seconds: 5),
        ),
      );
      _name.email=_emailController.text;
      // do something with the userCredential, such as storing it in a provider or state
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('Please make sure your Email or Password is correct',
          style: TextStyle(
            fontSize: getHeight(16),
            fontWeight: FontWeight.w700
          ),
          ),
          duration: const Duration(seconds: 5),
        ),
      );

    }
  }

Email _name=Get.find();


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color(0xFF0A27E0),
      body: 
      SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Positioned(left: getWidth(150),
                    bottom: getHeight(60),child: Text('Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getHeight(26),
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                  ),






                ],
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal:getWidth(25) ),
                child: TextFormField(
                  controller: _emailController,

                  style: TextStyle(
                    fontFamily: 'GTWalsheimPro',
                    fontWeight: FontWeight.w500,
                    fontSize: getHeight(18),
                    color: Colors.white,
                  ),

                  cursorColor: const Color(0xFF9DA3B6),

                  validator: schoolMailValidator(),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
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
                    fillColor:const Color(0xFF2F2F2),
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
                      child: const Center(child: Icon(Icons.email,color:Color(0xFF0A27E0) ,)),
                    ),

                  ),
                ),
              ),
              SizedBox(height: getHeight(15),),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:getWidth(25) ),
                child: TextFormField(
                  controller: _passwordController,
                  style: TextStyle(
                    fontFamily: 'GTWalsheimPro',
                    fontWeight: FontWeight.w500,
                    fontSize: getHeight(20),
                    color: Colors.white,
                  ),

                  cursorColor: const Color(0xFF9DA3B6),
                  validator: passwordValidator(),
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
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
                    fillColor:const Color(0xFF2F2F2),
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
                      child: const Center(child: Icon(Icons.key,color:Color(0xFF0A27E0) ,)),
                    ),

                  ),
                ),
              ),
              SizedBox(height: getHeight(15),),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:getWidth(60)),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _signIn(); // pass the context to the _signIn function
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
                            color: const Color(0xFF0A27E0),
                            fontWeight: FontWeight.w600,
                            fontSize: getHeight(20)
                          ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: getWidth(30),),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text('Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: getHeight(21),
                      ),
                      ),
                    )
                  ],
                ),
              ),
              

            ],
          ),
        ),
      ),
    );
  }
}
