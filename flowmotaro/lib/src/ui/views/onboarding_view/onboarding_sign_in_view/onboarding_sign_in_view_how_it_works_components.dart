import 'package:flutter/material.dart';

class StepsLine extends StatelessWidget {
  final double topOffset;
  final double leftOffset;
  final double height;
  final Color color;

  const StepsLine({
    super.key,
    required this.topOffset,
    required this.leftOffset,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topOffset,
      left: leftOffset,
      child: Container(
        height: height,
        width: 2,
        color: color,
      ),
    );
  }
}

class StepsList extends StatelessWidget {
  final List<String> steps;
  final int currentIndex;
  final double stepHeight;
  final double paddingM;
  final double circleSize;

  const StepsList({
    super.key,
    required this.steps,
    required this.currentIndex,
    required this.stepHeight,
    required this.paddingM,
    required this.circleSize,
  });

  @override
  Widget build(BuildContext context) {
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
        for (int i = 0; i < steps.length; i++)
          SizedBox(
            height: stepHeight,
            child: Row(
              children: [
                SizedBox(width: paddingM),
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
                      fontWeight:
                          i == currentIndex ? FontWeight.bold : FontWeight.normal,
                      color: i == currentIndex
                          ? Theme.of(context).colorScheme.onSurface
                          : Theme.of(context).colorScheme.primary,
                    ),
                    child: Text(steps[i]),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class MovingCircleIndicator extends StatelessWidget {
  final int currentIndex;
  final double stepHeight;
  final double topOffset;
  final double leftOffset;
  final double size;
  final Color color;

  const MovingCircleIndicator({
    super.key,
    required this.currentIndex,
    required this.stepHeight,
    required this.topOffset,
    required this.leftOffset,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      top: topOffset + (currentIndex * stepHeight),
      left: leftOffset,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}