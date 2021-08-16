import 'package:flutter/material.dart';
import 'package:go_tour_travel/constants/app_color.dart';
import 'package:go_tour_travel/ui/widgets/boutton_app.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  _LoginScreenViewState createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Image.asset('assets/images/logo.png',height: 78,width: 377,),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
           Row(
             children: [
               SizedBox(
                 width: 20,
               ),
               Text(
                 'Email',
               ),
             ],
           ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10,
                  right: 10
              ),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.secondary_color)
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.secondary_color)
                    )
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Password',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
              left: 10,
              right: 10
            ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.secondary_color)
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.secondary_color)
                ),
                suffixIcon: GestureDetector(
                  child: Icon(Icons.remove_red_eye_sharp),
                )
              ),
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  color: AppColors.primary_color
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: BottonsApp.btnLarge(textBtn: 'Log in',btnRaduis: 0),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'OR',
                style: TextStyle(
                    color: AppColors.secondary_color
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: BottonsApp.btnLarge(
                btnLogoPath: 'assets/images/google_logo.png',
                textBtn: 'Log in with Google',
                btnTextColor: Colors.black,
                btnBgColor: AppColors.white_color,
                btnBorderColor: AppColors.white_color,
                btnRaduis: 0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/auth/signup_screen');
                },
                child: Text(
                  'Sign Up Here',
                  style: TextStyle(
                      color: AppColors.primary_color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
