import 'package:aplikacija_za_doktore_387/constants/global_variables.dart';
import 'package:aplikacija_za_doktore_387/features/auth/screens/auth_screen.dart';
import 'package:aplikacija_za_doktore_387/features/home/screens/home_screen.dart';
import 'package:aplikacija_za_doktore_387/providers/user_provider.dart';
import 'package:aplikacija_za_doktore_387/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider (providers:[
      ChangeNotifierProvider(
        create: (context)=>UserProvider(),
        )
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.buttonColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen(),
    );
  }
}
