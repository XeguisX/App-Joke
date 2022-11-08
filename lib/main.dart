import 'package:app_joke/domain/entities/joke.dart';
import 'package:app_joke/presentation/ui/home/home_screen.dart';
import 'package:app_joke/presentation/ui/joke/joke_ramdon.dart';
import 'package:app_joke/presentation/ui/login/login_screen.dart';
import 'package:app_joke/presentation/ui/login/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.blue,
      ),
      routes: {
        'home': (_) => const HomeScreen(),
        'welcome': (_) => const WelcomeScreen(),
        'login': (_) => const LoginScreen(),
      },
      home: const WelcomeScreen(),
    );
  }
}
