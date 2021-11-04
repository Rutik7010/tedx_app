import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/models/Speaker.dart';

class SpeakerInfoPage extends StatefulWidget {
  final Speaker speaker;

  const SpeakerInfoPage({Key? key, required this.speaker}) : super(key: key);

  @override
  _SpeakerInfoPageState createState() => _SpeakerInfoPageState();
}

class _SpeakerInfoPageState extends State<SpeakerInfoPage> {
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
                  widget.speaker.name,
                  overflow: TextOverflow.ellipsis,
                  style: kAppBarStyle,
                ),
                floating: true,
                pinned: false,
                backgroundColor: kGrey.withOpacity(0.5),
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height / 2.5)),
                  child: CachedNetworkImage(
                    imageUrl: widget.speaker.imageUrl,
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
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                sliver: SliverList(
                    delegate: SliverChildListDelegate([
                  SizedBox(height: 10),
                  Text(
                    widget.speaker.designation,
                    style: kHeadingStyle,
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.speaker.info,
                    style: kSubheadingStyle,
                  ),
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
