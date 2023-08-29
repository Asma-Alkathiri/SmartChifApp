import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// this is supabase initializer, to connect to the database

class SupabaseInitializer {
  final supabaseClient = Supabase.instance.client;
  static supabaseInitialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Supabase.initialize(
      url: 'https://vqujoynxxqytbwpzsvui.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZxdWpveW54eHF5dGJ3cHpzdnVpIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTMzMTgzNjcsImV4cCI6MjAwODg5NDM2N30.DBCpZ8KgmPj56PEbOf-b7CqoesRL_Ik1MyVDuDseQhg',
    );
  }
}
