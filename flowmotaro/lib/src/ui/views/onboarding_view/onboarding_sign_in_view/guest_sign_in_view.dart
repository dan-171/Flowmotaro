import 'package:flowmotaro/src/services/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GuestSignIn extends ConsumerStatefulWidget {
  const GuestSignIn({super.key});

  @override
  ConsumerState<GuestSignIn> createState() => _GuestSignInState();
}

class _GuestSignInState extends ConsumerState<GuestSignIn> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 275,
        width: 275,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter Username',
              style: TextStyle(
                color: Colors.white,
              ),),
            const SizedBox(height: 10),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async {
                final username = _usernameController.text.trim();
                if (username.isEmpty) return;

                await ref
                    .read(guestSignInViewModelProvider.notifier)
                    .continueAsGuest(username);

                // ref.listen(guestSignInViewModelProvider, (prev, next) {
                //   next.whenOrNull(
                //     data: (user) {
                //       if (user != null) {
                //         // Navigator.pushReplacement(...)
                //       }
                //     },
                //   );
                // });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 2,
              ),
              child: const Text('Confirm'),
            )
          ],
        ),
      ),
    );
  }
}