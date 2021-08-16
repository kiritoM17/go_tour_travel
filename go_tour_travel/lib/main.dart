import 'package:flutter/material.dart';
import 'package:go_tour_travel/ui/views/authentification/login_screen.dart';
import 'package:go_tour_travel/ui/views/authentification/singup_screen.dart';
import 'package:go_tour_travel/ui/views/home_screen.dart';
import 'package:go_tour_travel/ui/views/onboarding/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/splash_screen',
      routes: <String,WidgetBuilder>{
        '/splash_screen' : (BuildContext context) => new SplashScreenView(),
        '/onboarding_screen' : (BuildContext context) => new OnboardingScreenView(),
        '/auth/login_screen' : (BuildContext context) => new LoginScreenView(),
        '/auth/signup_screen' : (BuildContext context) => new SingUpScreenView()
      },
    );
  }
}

