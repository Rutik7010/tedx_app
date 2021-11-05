import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/screens/EventInfoPage.dart';
import 'package:tedx_app/staticData.dart';
import 'package:tedx_app/widgets/EventBox.dart';
import 'package:tedx_app/widgets/SliverAppBar.dart';

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
            SAppBar(title: 'Tedx RAIT'),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
            ),
          ],
        ),
      )),
    );
  }
}
