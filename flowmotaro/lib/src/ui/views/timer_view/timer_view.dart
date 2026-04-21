
import 'package:flowmotaro/main.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key, required this.title});
  final String title;

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  String? _userId;

  @override
  void initState(){
    super.initState();
    supabase.auth.onAuthStateChange.listen((data){
      setState(() {
        _userId = data.session?.user.id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(_userId?? 'Not signed in'),
            ElevatedButton(
              onPressed: () async {
                await Supabase.instance.client.auth.signInWithOAuth(
                  OAuthProvider.google,
                  redirectTo: 'io.supabase.flutter://login-callback',
                );
              },
              child: Text("Sign in with Google"),
            )
          ],
        ),
      ),
    );
  }
}
