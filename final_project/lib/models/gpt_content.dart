class GPTContent {
  String? recipeName;
  String? steps;

  GPTContent({this.recipeName, this.steps});

  GPTContent.fromJson(Map<String, dynamic> json) {
    recipeName = json['recipe_name'];
    steps = json['steps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['recipe_name'] = recipeName;
    data['steps'] = steps;
    return data;
  }
}