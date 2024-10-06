import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:text_e_role/app/my_app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://iajzxrbibiinpobeyugd.supabase.co',
    anonKey:
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZ'
      'iI6Imlhanp4cmJpYmlpbnBvYmV5dWdkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjg'
      'xNjcxOTIsImV4cCI6MjA0Mzc0MzE5Mn0.cclttmqGzqZECRPeZfzNaEVvkWLnQsPDbhTeJytpvAY'
  );

  runApp(MyApp());
}