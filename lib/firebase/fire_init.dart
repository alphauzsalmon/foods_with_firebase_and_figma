import 'package:figma_firebase_exam/screens/login_signup.dart';
import 'package:figma_firebase_exam/screens/no_internet.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FireInitPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FireInitPageState();
}

class _FireInitPageState extends State<FireInitPage> {
  final Future<FirebaseApp> _init = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _init,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return NoInternetPage();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return LogInSignUpPage();
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: Color(0xffFA4A0C),
              ),
            ),
          );
        });
  }
}
