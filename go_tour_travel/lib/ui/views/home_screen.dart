import 'dart:async';

import 'package:flutter/material.dart';


class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushReplacementNamed(context,'onboarding_screen'));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgSplashScreen.png'),
              fit: BoxFit.fill
            ),
          ),
          child: Center(
            child: Image.asset('assets/images/logo.png',height: 102,),
          ),
        ),
      ),
    );
  }
}
