import 'package:flutter/material.dart';

class PageViewTile extends StatefulWidget {
  final NetworkImage networkImage;

  const PageViewTile({Key? key, required this.networkImage}) : super(key: key);

  @override
  _PageViewTileState createState() => _PageViewTileState();
}

class _PageViewTileState extends State<PageViewTile> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: widget.networkImage,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
