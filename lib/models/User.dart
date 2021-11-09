class UserM {
  late String uId;
  late String name;
  late String email;
  late int phoneNo;
  late String? profilePicLink;

  UserM(
      {required this.uId,
      required this.name,
      required this.email,
      required this.phoneNo,
      this.profilePicLink});

  Map toMap(UserM user) {
    var data = Map<String, dynamic>();
    data['uid'] = user.uId;
    data['email'] = user.email;
    data['name']=user.name;
    return data;
  }

  UserM.fromMap(Map<String, dynamic> mapData) {
    this.uId = mapData['uid'];
    this.email = mapData['email'];
    this.phoneNo=mapData['phone'];
    this.name=mapData["password"];
    this.profilePicLink=mapData["profilePicLink"];
  }
}
