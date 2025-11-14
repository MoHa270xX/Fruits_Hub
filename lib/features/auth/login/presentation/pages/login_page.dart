import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/login/presentation/widgets/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginPageBody(),
    );
  }
}