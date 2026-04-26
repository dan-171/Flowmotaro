import 'package:flowmotaro/src/services/providers.dart';
import 'package:flowmotaro/src/services/storage_services/isar_services.dart';
import 'package:flowmotaro/src/ui/views/onboarding_view/onboarding_intro_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'src/config/themes/light_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await IsarServices.init();
  await Supabase.initialize(
    url: "https://arircuqmkrmwsalaynoh.supabase.co",
    anonKey: "sb_publishable_fnque_xDyKR2xHvThteZQQ_kpA6RAf4",
  );

  runApp(
    ProviderScope(
      overrides: [
        isarProvider.overrideWithValue(IsarServices.instance),
      ],
      child: Flowmotaro()
    ),
  );
}

final supabase = Supabase.instance.client;

class Flowmotaro extends StatelessWidget {
  const Flowmotaro({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowmotaro',
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: textTheme,
        colorScheme: colorScheme,
        elevatedButtonTheme: elevatedButtonTheme,
        useMaterial3: true,
      ),
      home: const OnboardingIntroView(),
    );
  }
}