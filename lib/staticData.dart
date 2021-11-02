import 'package:tedx_app/models/Event.dart';
import 'package:tedx_app/models/Speaker.dart';
import 'package:tedx_app/models/User.dart';

Event kEvent = Event(
    formLink: "Formlink.xyz",
    bannerLink: "https://picsum.photos/200/300",
    eventName: "Tapping into the reality",
    dateTime: DateTime(2019, 9, 7, 15, 30),
    speaker: Speaker(
        designation: "Scientist",
        name: "Donald Trump",
        info:
            "Born and raised in Queens, New York City, Trump graduated from the Wharton School of the University of Pennsylvania with a bachelor's degree in 1968. He became the president of his father Fred Trump's real estate business in 1971 and renamed it The Trump Organization. Trump expanded the company's operations to building and renovating skyscrapers, hotels, casinos, and golf courses. He later started various side ventures, mostly by licensing his name. Trump and his businesses have been involved in more than 4,000 state and federal legal actions, including six bankruptcies. He owned the Miss Universe brand of beauty pageants from 1996 to 2015. From 2004 to 2015, he co-produced and hosted the reality television series The Apprentice.",
        imageUrl: "https://source.unsplash.com/user/c_v_r/1900x800"),
    eventInfo:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eget maximus lectus. Mauris volutpat, lectus et vehicula rutrum, lectus orci aliquam est, sed facilisis ante dui a eros.");

List<Event> kUpcomingEventslist = [
  Event(
      formLink: "Formlink.xyz",
      bannerLink: "https://picsum.photos/200/300",
      eventName: "Tedx Carnival",
      dateTime: DateTime(2019, 9, 7, 15, 30),
      speaker: Speaker(
          designation: "Scientist",
          name: "Elon Musk",
          info:
              "Born and raised in Queens, New York City, Trump graduated from the Wharton School of the University of Pennsylvania with a bachelor's degree in 1968. He became the president of his father Fred Trump's real estate business in 1971 and renamed it The Trump Organization. Trump expanded the company's operations to building and renovating skyscrapers, hotels, casinos, and golf courses. He later started various side ventures, mostly by licensing his name. Trump and his businesses have been involved in more than 4,000 state and federal legal actions, including six bankruptcies. He owned the Miss Universe brand of beauty pageants from 1996 to 2015. From 2004 to 2015, he co-produced and hosted the reality television series The Apprentice.",
          imageUrl: "https://source.unsplash.com/user/c_v_r/1900x800"),
      eventInfo:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eget maximus lectus. Mauris volutpat, lectus et vehicula rutrum, lectus orci aliquam est, sed facilisis ante dui a eros."),
  Event(
      formLink: "Formlink.xyz",
      bannerLink: "https://picsum.photos/200/300",
      eventName: "The power of comoputation",
      dateTime: DateTime(2019, 9, 7, 15, 30),
      speaker: Speaker(
          designation: "Politician",
          name: "Joe Biden",
          info:
              "President Biden represented Delaware for 36 years in the U.S. Senate before becoming the 47th Vice President of the United States. As President, Biden will restore America’s leadership and build our communities back better.",
          imageUrl: "https://source.unsplash.com/user/c_v_r/1900x800"),
      eventInfo:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eget maximus lectus. Mauris volutpat, lectus et vehicula rutrum, lectus orci aliquam est, sed facilisis ante dui a eros. Nulla vitae venenatis sapien, eu blandit nisi. Vestibulum eget efficitur urna, congue tincidunt sapien. Vestibulum placerat, tortor quis hendrerit euismod, massa lorem suscipit ligula, eget suscipit ante augue in risus. Duis non rhoncus ipsum, eget pharetra sapien. Aliquam erat volutpat. Donec condimentum pulvinar mauris, eget congue urna gravida ac. Ut nisi justo, imperdiet quis fermentum eu, pharetra sed velit. Mauris tincidunt arcu vel purus venenatis, et convallis velit vehicula. Vestibulum vel turpis commodo, pretium nunc sed, pretium nulla. Cras blandit ipsum quam, nec mollis eros euismod ut. Nulla maximus, justo et fringilla convallis, sem ligula faucibus arcu, at ultrices mi leo quis nisl. Vestibulum vitae diam vel ex consectetur pharetra. Aenean et sem quam. Etiam sed consectetur felis, eu dignissim massa. "),
  Event(
      formLink: "Formlink.xyz",
      bannerLink: "https://picsum.photos/200/300",
      eventName: "Life in Texas",
      dateTime: DateTime(2019, 9, 7, 15, 30),
      eventInfo:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eget maximus lectus. Mauris volutpat, lectus et vehicula rutrum, lectus orci aliquam est, sed facilisis ante dui a eros. Nulla vitae venenatis sapien, eu blandit nisi. Vestibulum eget efficitur urna, congue tincidunt sapien. Vestibulum placerat, tortor quis hendrerit euismod, massa lorem suscipit ligula, eget suscipit ante augue in risus. Duis non rhoncus ipsum, eget pharetra sapien. Aliquam erat volutpat. Donec condimentum pulvinar mauris, eget congue urna gravida ac. Ut nisi justo, imperdiet quis fermentum eu, pharetra sed velit. Mauris tincidunt arcu vel purus venenatis, et convallis velit vehicula. Vestibulum vel turpis commodo, pretium nunc sed, pretium nulla. Cras blandit ipsum quam, nec mollis eros euismod ut. Nulla maximus, justo et fringilla convallis, sem ligula faucibus arcu, at ultrices mi leo quis nisl. Vestibulum vitae diam vel ex consectetur pharetra. Aenean et sem quam. Etiam sed consectetur felis, eu dignissim massa. ",
      speaker: Speaker(
          designation: "Sniper",
          name: "Donald Trump",
          info:
              "Rafael Edward Cruz (/kruːz/; born December 22, 1970) is an American politician and attorney serving as the junior United States Senator for Texas since 2013. A member of the Republican Party, Cruz served as Solicitor General of Texas from 2003 to 2008.After graduating from Princeton University and Harvard Law School, Cruz pursued a career in politics. He worked as a policy advisor in the George W. Bush administration before serving as Solicitor General of Texas from 2003 to 2008. In 2012, Cruz was elected to the U.S. Senate, becoming the first Hispanic American to serve as a U.S. senator from Texas. In the Senate, Cruz has taken consistently conservative positions on economic and social policy; he played a leading role in the 2013 United States federal government shutdown, seeking to force Congress and President Barack Obama to defund the Affordable Care Act. He was reelected in a close Senate race in 2018 against Democratic candidate Beto O'Rourke.",
          imageUrl: "https://source.unsplash.com/user/c_v_r/1900x800")),
  Event(
      formLink: "Formlink.xyz",
      bannerLink: "https://picsum.photos/200/300",
      eventName: "Laugh like a Boomer",
      eventInfo:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eget maximus lectus. Mauris volutpat, lectus et vehicula rutrum, lectus orci aliquam est, sed facilisis ante dui a eros. Nulla vitae venenatis sapien, eu blandit nisi. Vestibulum eget efficitur urna, congue tincidunt sapien. Vestibulum placerat, tortor quis hendrerit euismod, massa lorem suscipit ligula, eget suscipit ante augue in risus. Duis non rhoncus ipsum, eget pharetra sapien. Aliquam erat volutpat. Donec condimentum pulvinar mauris, eget congue urna gravida ac. Ut nisi justo, imperdiet quis fermentum eu, pharetra sed velit. Mauris tincidunt arcu vel purus venenatis, et convallis velit vehicula. Vestibulum vel turpis commodo, pretium nunc sed, pretium nulla. Cras blandit ipsum quam, nec mollis eros euismod ut. Nulla maximus, justo et fringilla convallis, sem ligula faucibus arcu, at ultrices mi leo quis nisl. Vestibulum vitae diam vel ex consectetur pharetra. Aenean et sem quam. Etiam sed consectetur felis, eu dignissim massa. ",
      dateTime: DateTime(2019, 9, 7, 15, 30),
      speaker: Speaker(
          designation: "Comedian",
          name: "Bill Maher",
          info:
              "William Maher is an American comedian, actor, political commentator, and television host. He is known for the HBO political talk show Real Time with Bill Maher and the similar late-night show called Politically Incorrect, originally on Comedy Central and later on ABC.",
          imageUrl: "https://source.unsplash.com/user/c_v_r/1900x800")),
  Event(
      formLink: "Formlink.xyz",
      bannerLink: "https://picsum.photos/200/300",
      eventName: "Take Me Higher",
      eventInfo:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eget maximus lectus. Mauris volutpat, lectus et vehicula rutrum, lectus orci aliquam est, sed facilisis ante dui a eros. Nulla vitae venenatis sapien, eu blandit nisi. Vestibulum eget efficitur urna, congue tincidunt sapien. Vestibulum placerat, tortor quis hendrerit euismod, massa lorem suscipit ligula, eget suscipit ante augue in risus. Duis non rhoncus ipsum, eget pharetra sapien. Aliquam erat volutpat. Donec condimentum pulvinar mauris, eget congue urna gravida ac. Ut nisi justo, imperdiet quis fermentum eu, pharetra sed velit. Mauris tincidunt arcu vel purus venenatis, et convallis velit vehicula. Vestibulum vel turpis commodo, pretium nunc sed, pretium nulla. Cras blandit ipsum quam, nec mollis eros euismod ut. Nulla maximus, justo et fringilla convallis, sem ligula faucibus arcu, at ultrices mi leo quis nisl. Vestibulum vitae diam vel ex consectetur pharetra. Aenean et sem quam. Etiam sed consectetur felis, eu dignissim massa. ",
      dateTime: DateTime(2019, 9, 7, 15, 30),
      speaker: Speaker(
          designation: "Scientist",
          name: "Donald Trump",
          info:
              "Born and raised in Queens, New York City, Trump graduated from the Wharton School of the University of Pennsylvania with a bachelor's degree in 1968. He became the president of his father Fred Trump's real estate business in 1971 and renamed it The Trump Organization. Trump expanded the company's operations to building and renovating skyscrapers, hotels, casinos, and golf courses. He later started various side ventures, mostly by licensing his name. Trump and his businesses have been involved in more than 4,000 state and federal legal actions, including six bankruptcies. He owned the Miss Universe brand of beauty pageants from 1996 to 2015. From 2004 to 2015, he co-produced and hosted the reality television series The Apprentice.",
          imageUrl: "https://source.unsplash.com/user/c_v_r/1900x800")),
  Event(
      formLink: "Formlink.xyz",
      bannerLink: "https://picsum.photos/200/300",
      eventName: "Take Me Higher",
      eventInfo:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eget maximus lectus. Mauris volutpat, lectus et vehicula rutrum, lectus orci aliquam est, sed facilisis ante dui a eros. Nulla vitae venenatis sapien, eu blandit nisi. Vestibulum eget efficitur urna, congue tincidunt sapien. Vestibulum placerat, tortor quis hendrerit euismod, massa lorem suscipit ligula, eget suscipit ante augue in risus. Duis non rhoncus ipsum, eget pharetra sapien. Aliquam erat volutpat. Donec condimentum pulvinar mauris, eget congue urna gravida ac. Ut nisi justo, imperdiet quis fermentum eu, pharetra sed velit. Mauris tincidunt arcu vel purus venenatis, et convallis velit vehicula. Vestibulum vel turpis commodo, pretium nunc sed, pretium nulla. Cras blandit ipsum quam, nec mollis eros euismod ut. Nulla maximus, justo et fringilla convallis, sem ligula faucibus arcu, at ultrices mi leo quis nisl. Vestibulum vitae diam vel ex consectetur pharetra. Aenean et sem quam. Etiam sed consectetur felis, eu dignissim massa. ",
      dateTime: DateTime(2019, 9, 7, 15, 30),
      speaker: Speaker(
          designation: "Scientist",
          name: "Donald Trump",
          info:
              "Born and raised in Queens, New York City, Trump graduated from the Wharton School of the University of Pennsylvania with a bachelor's degree in 1968. He became the president of his father Fred Trump's real estate business in 1971 and renamed it The Trump Organization. Trump expanded the company's operations to building and renovating skyscrapers, hotels, casinos, and golf courses. He later started various side ventures, mostly by licensing his name. Trump and his businesses have been involved in more than 4,000 state and federal legal actions, including six bankruptcies. He owned the Miss Universe brand of beauty pageants from 1996 to 2015. From 2004 to 2015, he co-produced and hosted the reality television series The Apprentice.",
          imageUrl: "https://source.unsplash.com/user/c_v_r/1900x800"))
];

List<Event> kPastEventsList = kUpcomingEventslist;

Speaker kSpeaker = Speaker(
    designation: "Data Scientist",
    name: "Barack Obama",
    info:
        "We the People of the United States, in Order to form a more perfect Union, establish Justice, insure domestic Tranquility, provide for the common defense, promote the general Welfare, and secure the Blessings of Liberty to ourselves and our Posterity, do ordain and establish this Constitution for the United States of America.",
    imageUrl: "https://source.unsplash.com/user/c_v_r/1900x800");

User kUser = User(
    name: "Harsh Kulkarni",
    email: "harsh.kulkarni.42774@gmail.com",
    phoneNo: 8888888888);
