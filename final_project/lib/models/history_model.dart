class History {
  String? id;
  String? name;
  String? userId;
  String? recipeId;

  History({this.id, this.name, this.userId, this.recipeId});

  History.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userId = json['user_id'];
    recipeId = json['recipe_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['user_id'] = this.userId;
    data['recipe_id'] = this.recipeId;
    return data;
  }
}
