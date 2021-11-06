import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/models/Event.dart';
import 'package:tedx_app/screens/SpeakerInfoPage.dart';
import 'package:tedx_app/widgets/SliverAppBar.dart';
import 'package:url_launcher/url_launcher.dart';

class EventsInfoPage extends StatefulWidget {
  final Event event;
  final bool isEventDone;
  const EventsInfoPage({required this.event, this.isEventDone = false});
  @override
  _EventsInfoPageState createState() => _EventsInfoPageState();
}

class _EventsInfoPageState extends State<EventsInfoPage> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : showDialog(
          context: context,
          builder: (_) => CupertinoAlertDialog(
                title: Text('Invalid Form Link'),
              ));
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(children: [
          Container(
            color: kGrey,
            child: CustomScrollView(
              slivers: [
                SAppBar(title: widget.event.eventName),
                SliverToBoxAdapter(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: CachedNetworkImage(
                      imageUrl: widget.event.bannerLink,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (BuildContext cnt, String s, DownloadProgress d) =>
                              Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (BuildContext cnt, String s, var d) => Icon(
                        Icons.error,
                        size: MediaQuery.of(context).size.height / 2.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Text(widget.event.eventName, style: kHeadingStyle),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          " ${widget.event.dateTime.day} ${kMonths[widget.event.dateTime.month]} ${widget.event.dateTime.year}  \n ${widget.event.dateTime.hour}:${widget.event.dateTime.minute}",
                          style: kSubheadingStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            color: kRed.withOpacity(0.8),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Text(
                        //   "Total Seats: ${widget.event.totalSeats.toString()}",
                        //   style: kSubheadingStyle.copyWith(
                        //     fontWeight: FontWeight.w700,
                        //   ),
                        // ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.event.eventInfo,
                          style: kSubheadingStyle,
                        ),
                        Divider(
                          height: 20,
                          color: Colors.transparent,
                        ),
                        Text(
                          "Speaker",
                          style: kHeadingStyle,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SpeakerInfoPage(
                                speaker: widget.event.speaker,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 1,
                                child: CachedNetworkImage(
                                  imageUrl: widget.event.speaker.imageUrl,
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3.5,
                                    height:
                                        MediaQuery.of(context).size.width / 3.5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.event.speaker.name,
                                      style: kSubheadingStyle.copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: kRed.withOpacity(0.8),
                                      ),
                                    ),
                                    Text(
                                      widget.event.speaker.profession,
                                      maxLines: 7,
                                      overflow: TextOverflow.ellipsis,
                                      style: kSubheadingStyle.copyWith(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      widget.event.speaker.info,
                                      maxLines: 7,
                                      overflow: TextOverflow.ellipsis,
                                      style: kSubheadingStyle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ))
              ],
            ),
          ),
          if (!widget.isEventDone)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () => _launchURL(widget.event.formLink),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                    color: kRed,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Book Now",
                    textAlign: TextAlign.center,
                    style: kHeadingStyle,
                  ),
                ),
              ),
            )
        ]),
      ),
    );
  }
}
