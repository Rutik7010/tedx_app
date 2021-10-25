import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kGrey,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("Edx App"),
              floating: true,
              pinned: false,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: PageView(
                  children: [
                    Container(
                      color: Colors.amber,
                    ),
                    Container(
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return Container(
                height: 200,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        [Random().nextInt(9) * 100],
              );
            }, childCount: 3))
          ],
        ),
      ),
    );
  }
}
