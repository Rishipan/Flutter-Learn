import 'package:cute_n_fun_dot_indicator/pages/page1.dart';
import 'package:cute_n_fun_dot_indicator/pages/page2.dart';
import 'package:cute_n_fun_dot_indicator/pages/page3.dart';
import 'package:cute_n_fun_dot_indicator/pages/page4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          // dot indicator
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            // effect: ExpandingDotsEffect(
            //   activeDotColor: Colors.deepPurple,
            //   dotColor: Colors.deepPurple.shade100,
            //   dotHeight: 20,
            //   dotWidth: 20,
            //   spacing: 16,
            // ),
            effect: SwapEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 20,
              dotWidth: 20,
              spacing: 16,
            ),
            // effect: JumpingDotEffect(
            //   activeDotColor: Colors.deepPurple,
            //   dotColor: Colors.deepPurple.shade100,
            //   dotHeight: 20,
            //   dotWidth: 20,
            //   spacing: 16,
            //   // verticalOffset: 20,
            //   jumpScale: 2,
            // ),
          )
        ],
      ),
    );
  }
}
