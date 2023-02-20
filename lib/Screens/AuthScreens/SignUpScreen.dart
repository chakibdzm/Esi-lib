
import 'package:esilib/Screens/AuthScreens/SigninScreen.dart';
import 'package:esilib/Validators.dart';
import 'package:esilib/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  bool _isFormValid = false;
  @override
  void initState() {
    super.initState();
    _emailController.addListener(_updateFormState);
    _passwordController.addListener(_updateFormState);
  }

  void _updateFormState() {
    setState(() {
      _isFormValid = _formKey.currentState!.validate();
    });
  }


  void _signup() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const Signin()));

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text('User Created with Success',
            style: TextStyle(
                fontSize: getHeight(16),
                fontWeight: FontWeight.w700
            ),
          ),
          duration: const Duration(seconds: 5),
        ),
      );
      // Navigate to the next screen on successful signup
    } on FirebaseAuthException catch (e) {
      // Handle any errors that may occur during the authentication process
      print('Error: ${e.message}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(e.message.toString(),
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
                  Positioned(child: SvgPicture.asset('assets/illustrations/Sign up-rafiki.svg',
                  height: getHeight(470),
                  )),
                  Positioned(left: getWidth(140),
                          top: getHeight(80),child: Text('Sign Up',
                      style: TextStyle(
                        color: const Color(0xFF0A27E0),
                        fontSize: getHeight(30),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:getWidth(25) ,
                ),
                child: TextFormField(
                  controller: _emailController,

                  style: TextStyle(
                    fontFamily: 'GTWalsheimPro',
                    fontWeight: FontWeight.w500,
                    fontSize: getHeight(20),
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
                padding:  EdgeInsets.symmetric(horizontal:getWidth(25) ),
                child: TextFormField(
                  controller: _confirmpasswordController,
                  style: TextStyle(
                    fontFamily: 'GTWalsheimPro',
                    fontWeight: FontWeight.w500,
                    fontSize: getHeight(20),
                    color: Colors.white,
                  ),

                  cursorColor: const Color(0xFF9DA3B6),
                  validator: (value) {
                    if (_confirmpasswordController.text !=
                        _passwordController.text) {
                      return 'Password do not match';
                    }
                  },
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
                    hintText: 'Confirm Password',
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
                padding:  EdgeInsets.symmetric(horizontal:getWidth(120)),
                child: InkWell(
                  onTap: (){
                    _isFormValid? _signup():null;
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
                      child: Text('Sign Up',
                        style: TextStyle(
                            color: const Color(0xFF0A27E0),
                            fontWeight: FontWeight.w600,
                            fontSize: getHeight(20)
                        ),
                      ),
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
