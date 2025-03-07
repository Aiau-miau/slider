import 'package:flutter/material.dart';
import 'package:flutter_application_4/intro_screen/home_page.dart';
import 'package:flutter_application_4/intro_screen/screen1.dart';
import 'package:flutter_application_4/intro_screen/screen2.dart';
import 'package:flutter_application_4/intro_screen/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [Screen1(), Screen2(), Screen3()],
          ),

          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text('skip'),
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                onLastPage
                    ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },

                      child: Text('okay'),
                    )
                    : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        );
                      },

                      child: Text('next'),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
