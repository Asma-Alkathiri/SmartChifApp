import 'package:final_project/service/supabase_initializer.dart';

// we need to be sure if we need more functions

class SupabaseRecipes {
  Future<List> getRecipes() async {
    final rawData =
        await SupabaseInitializer().supabaseClient.from('recipe').select();
    final usersList = [];
    for (final user in rawData) {
      usersList.add(user);
    }
    return usersList;
  }

  Future insertRecipe() async {
    await SupabaseInitializer()
        .supabaseClient
        .from('recipe')
        .insert(''); // need to be sure about this function
  }

  Future deleteRecipe(String recipeId) async {
    await SupabaseInitializer()
        .supabaseClient
        .from('recipe')
        .delete()
        .eq('id', recipeId); // need to be sure about this function
  }

  Future updateRecipe(String recipeId) async {
    await SupabaseInitializer()
        .supabaseClient
        .from('recipe')
        .update({}).eq('id', recipeId); // need to be sure about this function
  }
}
