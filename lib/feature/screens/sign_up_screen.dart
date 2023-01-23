import 'package:flutter/material.dart';
import 'package:profile_picture_generator/core/network/api_handler.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }

  void getResultFromOpenAi() {
    askQuestion("What is the best cloud solution");
  }
}
