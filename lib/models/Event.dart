import 'package:tedx_app/models/Speaker.dart';

class Event {
  final String eventName;
  final Speaker speaker;
  final String formLink;
  final String bannerLink;
  final String eventInfo;
  Event(
      {
      required this.eventInfo,
      required this.formLink,
      required this.bannerLink,
      required this.eventName,
      required this.speaker
      });
}
