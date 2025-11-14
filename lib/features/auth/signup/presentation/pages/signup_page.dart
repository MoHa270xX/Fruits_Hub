import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/signup/presentation/widgets/signup_page_body.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SignupPageBody(),
    );
  }
}