import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:go_tour_travel/constants/app_color.dart';
import 'package:go_tour_travel/ui/widgets/boutton_app.dart';

class SingUpScreenView extends StatefulWidget {
  const SingUpScreenView({Key? key}) : super(key: key);

  @override
  _SingUpScreenViewState createState() => _SingUpScreenViewState();
}

class _SingUpScreenViewState extends State<SingUpScreenView> {
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
                'Sign Up',
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
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Confirm password',
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
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                    "I agree and i accept the ",
                    style: TextStyle(
                      color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = ()=>Navigator.pushNamed(context, '/terms_policy'),
                        text: "terms of use",
                        style: TextStyle(
                            color: AppColors.primary_color,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: BottonsApp.btnLarge(textBtn: 'Sign up',btnRaduis: 0),
            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
