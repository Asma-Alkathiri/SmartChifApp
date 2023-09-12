import 'package:final_project/models/user_model.dart';
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

  Future<UserModel> getUserNmae() async {
    final rawData = await SupabaseInitializer()
        .supabaseClient
        .from('user')
        .select()
        .eq('id',
            SupabaseInitializer().supabaseClient.auth.currentSession!.user.id);

    final UserModel user = UserModel.fromJson(rawData?[0]);

    return user;
  }
}





// Future<List<City>?> getCites() async {
//   final rawCities = await supabase.from('City').select('id, name,img_url');
//   final List<City> cities = [];
//   for (final city in rawCities) {
//     cities.add(City.fromJson(city));
//   }
//   return cities;
// }

// final User username = SupabaseInitializer()
//     .supabaseClient
//     .from('history')
//     .select()
//     .eq('id',
//         SupabaseInitializer().supabaseClient.auth.currentSession!.user.id);
//   print(username);
