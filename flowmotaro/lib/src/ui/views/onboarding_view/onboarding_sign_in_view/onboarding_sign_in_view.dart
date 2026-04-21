import 'package:flutter/material.dart';

import 'dart:ui';

import '../../../../config/constants.dart';
import 'onboarding_sign_in_view_how_it_works_components.dart';
import 'guest_sign_in_view.dart';

class OnboardingSignInView extends StatefulWidget {
  const OnboardingSignInView({super.key});

  @override
  State<OnboardingSignInView> createState() => _OnboardingSignInViewState();
}

class _OnboardingSignInViewState extends State<OnboardingSignInView> {
  final List<String> howItWorksText = [
    'Start a focus session.',
    'Take a break whenever.',
    'Earn taros to raise your companion.',
    'Hit streaks for reward!',
  ];
  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);
  static const double titleHeight = 50;
  static const double stepHeight = 80;
  static const double circleSize = 35;
  static const double movingCircleSize = 50;
  static const double lineTopOffset = titleHeight + stepHeight/2;
  static const double movingCircleTopOffset = titleHeight + (stepHeight/2 - movingCircleSize/2);

  bool _showGuestSignInOverlay = false;

  void _onboardingHowItWorksLoop() async {
    while (mounted) {
      await Future.delayed(const Duration(milliseconds: 2000));
      currentIndex.value =
          (currentIndex.value + 1) % howItWorksText.length;
    }
  }

  @override
  void initState(){
    super.initState();
    _onboardingHowItWorksLoop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildMainContent(),
          if (_showGuestSignInOverlay) 
            _buildBlurOverlay(),
        ],
      ),
    );
  }

  Widget _buildMainContent(){
    return Column(
      children: [
        SizedBox(height: 200,),
        Center(
          child: SizedBox(
            height: stepHeight * howItWorksText.length + titleHeight, // + title
            child: Stack(
              children: [
                StepsLine(
                  topOffset: lineTopOffset,
                  leftOffset: paddingM + (circleSize / 2) - 1,
                  height: stepHeight * howItWorksText.length - stepHeight,
                  color: Colors.grey.shade300,
                ),

                ValueListenableBuilder<int>(
                  valueListenable: currentIndex,
                  builder: (context, index, _) {
                    return MovingCircleIndicator(
                      currentIndex: index,
                      stepHeight: stepHeight,
                      topOffset: movingCircleTopOffset,
                      leftOffset: paddingM + (circleSize / 2) - movingCircleSize / 2,
                      size: movingCircleSize,
                      color: Theme.of(context).colorScheme.secondary,
                    );
                  },
                ),

                ValueListenableBuilder<int>(
                  valueListenable: currentIndex,
                  builder: (context, index, _) {
                    return StepsList(
                      steps: howItWorksText,
                      currentIndex: index,
                      stepHeight: stepHeight,
                      paddingM: paddingM,
                      circleSize: circleSize,
                    );
                  },
                ),
              ],
            )
          ),
        ),
        SizedBox(height: paddingM),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0), 
                  topRight: Radius.circular(50.0),
                ),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: paddingM),
                    child: Text('Sign In',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          elevation: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icons/google.png',
                              height: 20,
                            ),
                            const SizedBox(width: 10),
                            const Text('Sign in with Google'),
                          ],
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text('or',),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _showGuestSignInOverlay = true;
                      });
                    },
                    icon: const Icon(Icons.login),
                    label: const Text('Continue as guest'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBlurOverlay() {
    return Positioned.fill(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _showGuestSignInOverlay = false;
          });
        },
        child: Stack(
          children: [
            // Blur background
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withValues(alpha: 0.2),
              ),
            ),

            // Center guest sign in popup
            Center(
              child: GestureDetector(
                onTap: () {}, // prevent closing when tapping inside
                child: GuestSignIn(),
              ),
            ),
          ],
        ),
      ),
    );
    }
}