import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/forget_password/presentation/widgets/forget_password_page_body.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const ForgetPasswordPageBody(),
    );
  }
}