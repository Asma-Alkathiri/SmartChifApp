import 'package:final_project/service/supabase_initializer.dart';
import 'package:get_storage/get_storage.dart';

import '../models/suggestion_recipe_model.dart';

class SupabaseSuggestionRecipe {
  static Future<List<SuggestionRecipe>?> getSuggestionRecipeEven() async {
    final rawSuggestion = await SupabaseInitializer()
        .supabaseClient
        .from('suggestion_recipe')
        .select('');
    final List<SuggestionRecipe> suggestions = [];
    int num = 0;
    for (final suggestion in rawSuggestion) {
      num++;
      if (num % 2 == 0) {
        suggestions.add(SuggestionRecipe.fromJson(suggestion));
      }
    }
    return suggestions;
  }

  static Future<List<SuggestionRecipe>?> getSuggestionRecipeOdd() async {
    final rawSuggestion = await SupabaseInitializer()
        .supabaseClient
        .from('suggestion_recipe')
        .select('');
    final List<SuggestionRecipe> suggestions = [];
    int num = 0;
    for (final suggestion in rawSuggestion) {
      num++;
      if (num % 2 != 0) {
        suggestions.add(SuggestionRecipe.fromJson(suggestion));
      }
    }
    // final box1 = GetStorage();
    // box1.write('suggestions', suggestions);
    return suggestions;
  }
}
