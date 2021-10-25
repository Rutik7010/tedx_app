class Speaker {
  final String name;
  final String info;
  final String imageUrl;
  final String designation;
  Speaker(
      {required this.designation,
      required this.name,
      required this.info,
      required this.imageUrl});
}

Speaker kSpeaker = Speaker(
    designation: "Data Scientist",
    name: "Barack Obama",
    info:
        "We the People of the United States, in Order to form a more perfect Union, establish Justice, insure domestic Tranquility, provide for the common defense, promote the general Welfare, and secure the Blessings of Liberty to ourselves and our Posterity, do ordain and establish this Constitution for the United States of America.",
    imageUrl: "https://source.unsplash.com/user/c_v_r/1900x800");
