import 'package:flutter/material.dart';
import 'package:flutter_application_ousstravel/screens/home_screen.dart';
import 'package:flutter_application_ousstravel/screens/login.dart';
import 'package:flutter_application_ousstravel/screens/singup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Color.fromARGB(255, 207, 228, 250)),
      ),
      home: Login(),
      routes: {
        "SingUp": (context) => SingUp(),
        "Login": (context) => Login(),
        "HomePage": (context) => HomeScreen(),
      },
    );
  }
}
