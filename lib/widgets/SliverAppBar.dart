import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';

class SAppBar extends StatelessWidget {
  final String title;

  const SAppBar({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        "Edx App",
        style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w900),
      ),
      floating: true,
      pinned: false,
      backgroundColor: kGrey.withOpacity(0.5),
    );
  }
}
