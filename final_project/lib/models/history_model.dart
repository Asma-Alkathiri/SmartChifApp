class HistoryModel {
  String? id;
  String? name;
  String? userId;
  String? recipeId;

  HistoryModel({this.id, this.name, this.userId, this.recipeId});

  HistoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userId = json['user_id'];
    recipeId = json['recipe_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['user_id'] = userId;
    data['recipe_id'] = recipeId;
    return data;
  }
}
