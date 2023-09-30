import 'package:firebase_core/firebase_core.dart';
import 'package:first_firebase_project/database/firebase_options.dart';
import 'package:first_firebase_project/product_listing_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(37, 32, 28, 255))),
          useMaterial3: true,
          colorScheme:
              ColorScheme.fromSeed(seedColor: const Color.fromRGBO(37, 32, 28, 255))),
      home: const ProductListingPage(),
    );
  }
}
