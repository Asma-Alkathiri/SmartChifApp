class UserModel {
  String? id;
  String? name;
  String? allergic;
  String? profileImg;

  UserModel({this.id, this.name, this.allergic, this.profileImg});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    allergic = json['allergic'];
    profileImg = json['profile_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['allergic'] = allergic;
    data['profile_img'] = profileImg;
    return data;
  }
}
