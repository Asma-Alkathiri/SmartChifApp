class Ingredient {
  String? id;
  String? name;
  String? ingrImg;
  String? type;

  Ingredient({this.id, this.name, this.ingrImg, this.type});

  Ingredient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    ingrImg = json['ingr_img'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['ingr_img'] = this.ingrImg;
    data['type'] = this.type;
    return data;
  }
}
