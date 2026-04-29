import 'package:flowmotaro/src/ui/views/onboarding_view/onboarding_sign_in_view/onboarding_sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../config/constants.dart';

class OnboardingIntroView extends StatefulWidget {
  const OnboardingIntroView({super.key});

  @override
  State<OnboardingIntroView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingIntroView> with SingleTickerProviderStateMixin{
  final List<String> images = [
    'assets/images/onboarding/onboarding_1.svg',
    'assets/images/onboarding/onboarding_2.svg',
    'assets/images/onboarding/onboarding_3.svg',
  ];
  final List<String> onboardingText = [
    'Build Focus',
    'Boost Consistency',
    'Hone Productivity',
  ];
  int currentIndex = 0;

  // loop onboarding intro images & text animation
  void _onboardingIntroLoop() async {
    while (mounted) {
      await Future.delayed(const Duration(milliseconds: 2500));
      setState(() {
        currentIndex = (currentIndex + 1) % images.length;
      });
    }
  }

  @override
  void initState(){
    super.initState();
    _onboardingIntroLoop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 600),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: ScaleTransition(
                      scale: Tween(begin: 0.95, end: 1.0).animate(animation),
                      child: child,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  key: ValueKey(images[currentIndex]),
                  children: [
                    SvgPicture.asset(
                      images[currentIndex],
                      height: 225,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      onboardingText[currentIndex],
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),
            // Expanded(child: SizedBox(),),
            Padding(
              padding: const EdgeInsetsGeometry.only(bottom: paddingL),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context){
                      return OnboardingSignInView();
                    })
                  );
                }, 
                child: Text(
                  'Start',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white,),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}