import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/screens/LoginPage.dart';
import 'package:tedx_app/screens/TabView.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('lib/assets/RAIT.png', fit: BoxFit.cover),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
              child: Container(
                color: Colors.black.withOpacity(0.5),
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),
                TextFormField(
                  decoration: getInputDecoration(
                    hintText: "Enter Name",
                    icon: Icon(Icons.person),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                TextFormField(
                  decoration: getInputDecoration(
                    hintText: "Enter Email",
                    icon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: getInputDecoration(
                    hintText: "Enter Password",
                    icon: Icon(Icons.lock),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => TabView()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: kRed,
                        borderRadius:
                            BorderRadius.circular(size.height * 0.08)),
                    height: size.height * 0.07,
                    width: size.width * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Already Registered? ',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 20)),
                        TextSpan(
                          text: 'Sign in',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
