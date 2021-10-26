import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/staticData.dart';
import 'package:tedx_app/widgets/PageViewTile.dart';

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
              title: Text(
                "Edx App",
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w900),
              ),
              floating: true,
              pinned: false,
              backgroundColor: kGrey.withOpacity(0.5),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.grey.shade800,
                height: MediaQuery.of(context).size.height / 3,
                child: PageView(
                  controller: PageController(
                    viewportFraction: 0.8,
                    initialPage: 0,
                  ),
                  children: [
                    PageViewTile(
                      networkImage: NetworkImage(
                          'https://github.com/Swapnilsochill/TEDXDYPatilUniversity/blob/main/Images/Untitledesign.png?raw=true'),
                    ),
                    PageViewTile(
                      networkImage: NetworkImage(
                          'https://github.com/Swapnilsochill/TEDXDYPatilUniversity/blob/main/Images/speakerhero.jpg?raw=true'),
                    ),
                    PageViewTile(
                      networkImage: NetworkImage(
                          'https://github.com/Swapnilsochill/TEDXDYPatilUniversity/blob/main/Images/Tedhero.jpg?raw=true'),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Upcoming Events",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 35,
                ),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(),
                      ),
                    ],
                  ),
                ),
              );
            }, childCount: 5))
          ],
        ),
      ),
    );
  }
}
