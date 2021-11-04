import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/screens/EventsInfoPage.dart';
import 'package:tedx_app/screens/SpeakerInfoPage.dart';
import 'package:tedx_app/staticData.dart';
import 'package:tedx_app/widgets/EventBox.dart';
import 'package:tedx_app/widgets/SpeakerBox.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
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
              child: Text(
                "Our Previous Events",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext cnt, int index) => GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventsInfoPage(
                              event: kPreviousEvents[index],
                              isEventDone: true,
                            ),
                          ),
                        ),
                        child: EventBox(
                          event: kPreviousEvents[index],
                        ),
                      ),
                  childCount: kSpeakersList.length),
            )
          ],
        ),
      )),
    );
  }
}
