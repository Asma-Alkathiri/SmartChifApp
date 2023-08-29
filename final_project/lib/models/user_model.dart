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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['allergic'] = this.allergic;
    data['profile_img'] = this.profileImg;
    return data;
  }
}
