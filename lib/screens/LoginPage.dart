import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/screens/Signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                color: kGrey.withOpacity(0.1),
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
                      hintText: "Enter Email", icon: Icon(Icons.email)),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: getInputDecoration(
                      hintText: "Enter Password", icon: Icon(Icons.lock)),
                  keyboardType: TextInputType.emailAddress,
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(size.height * 0.08)),
                  height: size.height * 0.08,
                  width: size.width * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'New User? ',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 20)),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
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
