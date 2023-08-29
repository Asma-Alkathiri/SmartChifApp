import 'package:final_project/service/supabase_initializer.dart';

// we need to be sure if we need more functions

class SupabaseHistories {
  Future<List> getHistories() async {
    final rawData =
        await SupabaseInitializer().supabaseClient.from('history').select();
    final usersList = [];
    for (final user in rawData) {
      usersList.add(user);
    }
    return usersList;
  }

  Future insertHistory() async {
    await SupabaseInitializer()
        .supabaseClient
        .from('history')
        .insert(''); // need to be sure about this function
  }

  Future deleteHistory(String historyId) async {
    await SupabaseInitializer()
        .supabaseClient
        .from('history')
        .delete()
        .eq('id', historyId); // need to be sure about this function
  }

  Future updateHistory(String historyId) async {
    await SupabaseInitializer()
        .supabaseClient
        .from('history')
        .update({}).eq('id', historyId); // need to be sure about this function
  }
}
