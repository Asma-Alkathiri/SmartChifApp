import 'package:final_project/service/supabase_initializer.dart';

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
    return ingredients;
  }
}
