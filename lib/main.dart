import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api/auth_provider.dart';
import 'home.dart';
import 'patients_note.dart';

late SharedPreferences sharedPre;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPre = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontFamily: 'Rubik-Regular'),
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      // After 3 seconds, navigate to Page2
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => sharedPre.getString("userId") != null
                ? PatientNotes()
                : const Home()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigo,
        child: Image.asset(
          "images/logo.png",
          color: Colors.white,
        ),
      ),
    );
  }
}
