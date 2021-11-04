import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/screens/SpeakerInfoPage.dart';
import 'package:tedx_app/staticData.dart';
import 'package:tedx_app/widgets/SpeakerBox.dart';

class SpeakersPage extends StatefulWidget {
  const SpeakersPage({Key? key}) : super(key: key);

  @override
  _SpeakersPageState createState() => _SpeakersPageState();
}

class _SpeakersPageState extends State<SpeakersPage> {
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
                "Our Speakers",
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
                                builder: (context) => SpeakerInfoPage(
                                    speaker: kSpeakersList[index]))),
                        child: SpeakerBox(
                          speaker: kSpeakersList[index],
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
