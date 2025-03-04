import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;

    return Scaffold(
        body: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context).push('/home');
          },
          child: Text('Login'),
        ),
      ],
    ));
  }
}
