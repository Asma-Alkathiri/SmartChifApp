class SuggestionRecipe {
  String? id;
  String? name;
  String? recipeImg;
  String? description;

  SuggestionRecipe({this.id, this.name, this.recipeImg, this.description});

  SuggestionRecipe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    recipeImg = json['recipe_img'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['recipe_img'] = this.recipeImg;
    data['description'] = this.description;
    return data;
  }
}
