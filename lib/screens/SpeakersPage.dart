import 'package:flutter/material.dart';

class SpeakersPage extends StatefulWidget {
  const SpeakersPage({Key? key}) : super(key: key);

  @override
  _SpeakersPageState createState() => _SpeakersPageState();
}

class _SpeakersPageState extends State<SpeakersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speakers"),
      ),
    );
  }
}
