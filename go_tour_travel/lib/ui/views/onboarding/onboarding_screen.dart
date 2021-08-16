import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class OnboardingScreenView extends StatefulWidget {
  const OnboardingScreenView({Key? key}) : super(key: key);

  @override
  _OnboardingScreenViewState createState() => _OnboardingScreenViewState();
}

class _OnboardingScreenViewState extends State<OnboardingScreenView> {
  @override
  Widget build(BuildContext context) {

    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
        bodyTextStyle: bodyStyle,
     // descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
     //  pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
      imageFlex: 4
    );
    return SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Explore',
              body: 'Explore your favourite destination around the world.',
              image: _buildFullscrenImage('assets/images/onboarding/01.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: 'Easy Peasy',
              body: 'Make your travel experince very easy & peasy.',
              image: _buildFullscrenImage('assets/images/onboarding/02.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: 'Enjoy Tour',
              body: 'Enjoy your favourite destination with your love one.',
              image: _buildFullscrenImage('assets/images/onboarding/03.png'),
              decoration: pageDecoration,
            )
          ],
          done: Container(
            width: 70,
            height: 35,
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                border: Border.all(color:Colors.orange),
                borderRadius: BorderRadius.circular(20.0)
            ),
            child:Center(
              child:  Text(
                  'Starting',
                  style: TextStyle(
                fontSize: 12,
                  fontWeight: FontWeight.w400
              )
              ),
            ),
          ),
          onDone: (){},
          showSkipButton: true,
          skip: Container(
            width: 70,
            height: 35,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              border: Border.all(color:Colors.orange),
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Center(
              child: Text(
                  'Skip',
                style: TextStyle(
                  fontSize: 12.0
                ),
              ),
            ),
          ),
          onSkip: () {},
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          // globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
        ),
    );
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path,));

  Widget _buildFullscrenImage(String path) {
    return Image.asset(
      path,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xffd7d2d2),
    activeColor: Colors.orange,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  // PageDecoration getPageDecoration() => PageDecoration(
  //   titleTextStyle: TextStyle(
  //       fontSize: 28,
  //       fontWeight: FontWeight.w400
  //   ),
  //   bodyTextStyle: TextStyle(fontSize: 20),
  //   descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
  //   imagePadding: EdgeInsets.all(24),
  //   pageColor: Colors.white,
  // );
}
