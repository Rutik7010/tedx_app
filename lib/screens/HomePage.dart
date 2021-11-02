import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/screens/EventsInfoPage.dart';
import 'package:tedx_app/staticData.dart';
import 'package:tedx_app/widgets/EventBox.dart';
import 'package:tedx_app/widgets/PageViewTile.dart';
import 'package:tedx_app/widgets/SliverAppBar.dart';

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
            SAppBar(title: "Edx App"),
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
                  style: kHeadingStyle,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EventsInfoPage(event: kUpcomingEventslist[index])),
                ),
                child: EventBox(
                    imageUrl: kUpcomingEventslist[index].bannerLink,
                    eventName: kUpcomingEventslist[index].eventName,
                    speakerName: kUpcomingEventslist[index].speaker.name),
              );
            }, childCount: kUpcomingEventslist.length)),
          ],
        ),
      ),
    );
  }
}
