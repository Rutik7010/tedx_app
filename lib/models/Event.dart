import 'package:tedx_app/models/Speaker.dart';

class Event {
  final String eventName;
  final Speaker speaker;
  final String formLink;
  final String bannerLink;
  final String eventInfo;
  // if event is open then display it in upcomming events list 
  // otherwise display it in previous events list
  final bool isOpen;

  Event(
      {
      required this.eventInfo,
      required this.formLink,
      required this.bannerLink,
      required this.eventName,
      required this.speaker,
      required this.isOpen
      });
}
