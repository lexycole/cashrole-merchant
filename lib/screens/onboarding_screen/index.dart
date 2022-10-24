import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:introduction_screen/introduction_screen.dart';
  
  class OnboardingScreen extends StatelessWidget {
    OnboardingScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Financial Transactions made easy',
      body: 'Get Easy Access To Global Payment Solutions.',
      footer: SizedBox(
        height: 45,
        width: 300,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              elevation: 8
          ),
          onPressed: () {
            Get.offNamed(RouteHelper.getSignUpScreen());
          },
          child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
        ),
      ),  
      image: Center(
        child: Image.asset('assets/onboarding_image/currency_exchange.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        )
      )
    ),
    PageViewModel(
        title: 'Your one-stop financial services provider',
        body: 'We are using our technology and operations to drive access to digital payment and online stores for businesses in the financially excluded area of the society.',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 8
            ),
            onPressed: () {
                Get.offNamed(RouteHelper.getSignUpScreen());
            },
            child: const Text("Why to wait!", style: TextStyle(fontSize: 20),),
          ),
        ),
        image: Center(
          child: Image.asset('assets/onboarding_image/peer_to_peer.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'Your one-stop financial solutions partner',
        body: 'Bank Transfer in an instant beyound borders across the globe.',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              elevation: 8
            ),
            onPressed: () {
                Get.offNamed(RouteHelper.getSignUpScreen());
            },
            child: const Text("Let's Start", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset('assets/onboarding_image/send_and_receive_assets.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15,15),
            color: Colors.blue,
            activeSize: Size.square(20),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text('Done', style: TextStyle(fontSize: 20),),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(fontSize: 20),),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 25,),
          onDone: () => Get.offNamed(RouteHelper.getSignUpScreen()),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }
}