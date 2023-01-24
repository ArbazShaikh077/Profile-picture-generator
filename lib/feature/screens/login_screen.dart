import 'package:flutter/material.dart';
import 'package:profile_picture_generator/core/network/api_handler.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
