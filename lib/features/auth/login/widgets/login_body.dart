import 'package:flutter/material.dart';
import 'package:task_digtal/features/auth/login/widgets/sections_inputs.dart';
import 'logo_of_screen_login.dart';
import 'not_have_account_go_register.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 78,),
            const LogoOfScreenLogin(),
            const SizedBox(height: 78,),
            SectionInputsOfLogin(),
            const SizedBox(
              height: 31,
            ),
             const NotHaveAccountGoRegister()

          ],
        ),
      ),
    );
  }
}


