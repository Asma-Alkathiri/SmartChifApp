import 'package:final_project/service/supabase_initializer.dart';

// we need to be sure if we need more functions

class SupabaseUser {
  Future<List> getUsers() async {
    final rawData =
        await SupabaseInitializer().supabaseClient.from('user').select();
    final usersList = [];
    for (final user in rawData) {
      usersList.add(user);
    }
    return usersList;
  }
}
