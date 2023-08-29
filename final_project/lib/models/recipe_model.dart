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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['recipe_img'] = this.recipeImg;
    return data;
  }
}
