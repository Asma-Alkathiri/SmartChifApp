import 'package:final_project/service/supabase_initializer.dart';
import 'package:get_storage/get_storage.dart';

import '../models/ingredient_model.dart';

class SupabaseIngredient {
  Future<List<Ingredient>?> getIngredientbyType(String type) async {
    final rawIngredient = await SupabaseInitializer()
        .supabaseClient
        .from('ingredient')
        .select('')
        .eq('type', type);
    final List<Ingredient> ingredients = [];
    for (final ingredient in rawIngredient) {
      ingredients.add(Ingredient.fromJson(ingredient));
    }
    final box = GetStorage();
    box.write(type, ingredients);
    return ingredients;
  }
}
