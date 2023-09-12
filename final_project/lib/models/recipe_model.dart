class RecipeModel {
  String? id;
  String? name;
  String? description;
  String? recipeImg;

  RecipeModel({this.id, this.name, this.description, this.recipeImg});

  RecipeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    recipeImg = json['recipe_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['recipe_img'] = recipeImg;
    return data;
  }
}
