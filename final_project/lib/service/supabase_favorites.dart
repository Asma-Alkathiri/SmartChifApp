import 'package:final_project/service/supabase_initializer.dart';

// we need to be sure if we need more functions

class SupabaseFavorites {
  Future<List> getFavorites() async {
    final rawData =
        await SupabaseInitializer().supabaseClient.from('favorite').select();
    final usersList = [];
    for (final user in rawData) {
      usersList.add(user);
    }
    return usersList;
  }

  Future insertFavorite() async {
    await SupabaseInitializer()
        .supabaseClient
        .from('favorite')
        .insert(''); // need to be sure about this function
  }

  Future deleteFavorite(String favoriteId) async {
    await SupabaseInitializer()
        .supabaseClient
        .from('table')
        .delete()
        .eq('id', favoriteId); // need to be sure about this function
  }

  Future updateFavorite(String favoriteId) async {
    await SupabaseInitializer()
        .supabaseClient
        .from('table')
        .update({})
        .eq('id', favoriteId); // need to be sure about this function
  }
}
