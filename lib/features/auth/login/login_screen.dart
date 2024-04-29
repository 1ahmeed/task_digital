import 'package:flutter/material.dart';
import 'package:task_digtal/features/auth/login/widgets/login_body.dart';



class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody()
    );
  }
}


