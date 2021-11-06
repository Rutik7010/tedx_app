import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/helper/auth_methods.dart';
import 'package:tedx_app/screens/HomePage.dart';
import 'package:tedx_app/screens/LoginPage.dart';
import 'package:tedx_app/screens/TabView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: kMaterialColor,
      ),
      home: StreamBuilder(
        stream:  AuthMethods().onAuthStateChanged,
        builder: (context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.hasData) {
            return TabView();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
