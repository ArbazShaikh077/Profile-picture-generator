import 'package:flutter/material.dart';
import 'package:profile_picture_generator/core/network/api_handler.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: TextFormField(
        onChanged: (String value) {
          askQuestion(value);
        },
      ),
    );
  }
}
