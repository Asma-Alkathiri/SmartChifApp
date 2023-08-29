class FavoriteModel {
  String? id;
  String? userId;
  String? recipeId;

  FavoriteModel({this.id, this.userId, this.recipeId});

  FavoriteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    recipeId = json['recipe_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['recipe_id'] = this.recipeId;
    return data;
  }
}
