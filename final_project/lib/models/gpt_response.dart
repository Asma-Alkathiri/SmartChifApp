import 'package:final_project/models/recipe_model.dart';

class GPTResponse {
  List<RecipeModel>? choices;

  GPTResponse({this.choices});

  GPTResponse.fromJson(Map<String, dynamic> json) {
    if (json['recipe'] != null) {
      choices = <RecipeModel>[];
      json['recipe'].forEach((v) {
        choices!.add(RecipeModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (choices != null) {
      data['choices'] = choices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Message {
  String? role;
  String? content;

  Message({this.role, this.content});

  Message.fromJson(Map<String, dynamic> json) {
    role = json['role'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['role'] = role;
    data['content'] = content;
    return data;
  }
}
