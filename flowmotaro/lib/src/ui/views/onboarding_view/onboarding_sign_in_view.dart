import 'package:flutter/material.dart';
import '../../../config/constants.dart';

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
  int currentIndex = 0;
  static const double titleHeight = 50;
  static const double stepHeight = 80;
  static const double circleSize = 35;
  static const double movingCircleSize = 50;
  static const double lineTopOffset = titleHeight + stepHeight/2;
  static const double movingCircleTopOffset = titleHeight + (stepHeight/2 - movingCircleSize/2);

  void _onboardingHowItWorksLoop() async{
    while(mounted){
      await Future.delayed(const Duration(milliseconds: 2000));
      setState(() {
        currentIndex = (currentIndex + 1) % howItWorksText.length;
      });
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
      body: Column(
        children: [
          SizedBox(height: 200,),
          Center(
            child: SizedBox(
              height: stepHeight * howItWorksText.length + titleHeight, // + title
              child: Stack(
                children: [
                  _buildLine(),
                  _buildMovingIndicator(),
                  _buildSteps(),
                ],
              ),
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
                    TextButton(
                      onPressed: (){},
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.login),
                        label: const Text('Continue as guest'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          elevation: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  //line connecting circles
  Widget _buildLine() {
    return Positioned(
      top: lineTopOffset,
      left: paddingM + (circleSize / 2) - 1, 
      child: Container(
        height: stepHeight * howItWorksText.length - stepHeight,
        width: 2,
        color: Colors.grey.shade300,
      ),
    );
  }

  //steps circle + text
  Widget _buildSteps() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          child: Text(
            'How it works',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        for (int i = 0; i < howItWorksText.length; i++)
          SizedBox(
            height: stepHeight,
            child: Row(
              children: [
                const SizedBox(width: paddingM),
                Container(
                  width: circleSize,
                  height: circleSize,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: i == currentIndex ? FontWeight.bold : FontWeight.normal,
                      color: i == currentIndex
                          ? Theme.of(context).colorScheme.onSurface
                          : Theme.of(context).colorScheme.primary,
                    ),
                    child: Text(howItWorksText[i]),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  //moving circle
  Widget _buildMovingIndicator() {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      top: movingCircleTopOffset + (currentIndex * stepHeight),
      left: paddingM + (circleSize / 2) - movingCircleSize/2,
      child: Container(
        width: movingCircleSize,
        height: movingCircleSize,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}