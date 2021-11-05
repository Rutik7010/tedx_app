import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tedx_app/constants.dart';
import 'package:tedx_app/models/Speaker.dart';

class SpeakerBox extends StatelessWidget {
  final Speaker speaker;

  const SpeakerBox({Key? key, required this.speaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade800,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 1,
            child: CachedNetworkImage(
              imageUrl: speaker.imageUrl,
              imageBuilder: (context, imageProvider) => Container(
                width: MediaQuery.of(context).size.width / 3.5,
                height: MediaQuery.of(context).size.width / 3.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover),
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
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
                  speaker.name,
                  style: kHeadingStyle.copyWith(
                      fontSize: 19, fontWeight: FontWeight.w500),
                ),
                Text(
                  speaker.profession,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: kSubheadingStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
