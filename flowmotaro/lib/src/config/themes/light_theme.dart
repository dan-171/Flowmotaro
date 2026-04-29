import 'package:flutter/material.dart';

ColorScheme colorScheme = ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 67, 67, 67),
          primary: const Color.fromARGB(255, 67, 67, 67),
          secondary: const Color.fromARGB(255, 135, 176, 53),
          tertiary: const Color.fromARGB(255, 190, 218, 133),
          primaryContainer: const Color.fromARGB(255, 190, 218, 133),
        );

ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 67, 67, 67),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 2,
            fixedSize: Size(250, 45),
          ),
        );