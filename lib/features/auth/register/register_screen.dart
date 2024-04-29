import 'package:flutter/material.dart';
import 'package:task_digtal/features/auth/register/widgets/registeer_body.dart';


class RegisterScreen extends StatelessWidget {
   const RegisterScreen({Key? key}) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: RegisterBody(),
      ),
    );
  }
}
