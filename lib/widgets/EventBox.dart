import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/models/Event.dart';
import 'package:tedx_app/staticData.dart';

class EventBox extends StatelessWidget {
  final Event event;

  const EventBox({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kGrey,
                    Colors.transparent,
                  ],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: CachedNetworkImage(
                height: 100,
                width: double.infinity,
                imageUrl: event.bannerLink,
                fit: BoxFit.cover,
                progressIndicatorBuilder:
                    (BuildContext cnt, String s, DownloadProgress d) => Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              event.eventName,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: Text(
              event.speaker.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
