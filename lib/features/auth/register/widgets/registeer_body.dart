import 'package:flutter/material.dart';
import 'package:task_digtal/features/auth/register/widgets/sections_inputs.dart';

import 'have_account_go_login.dart';
import 'logo_of_screen_register.dart';

class RegisterBody extends  StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 94,),
            const LogoOfScreenRegister(),
            const SizedBox(height: 46,),
            SectionInputsOfRegister(),
            const SizedBox(
              height: 24,
            ),
            const HaveAccountGoLogin()
          ],
        ),
      ),
    );
  }
}
