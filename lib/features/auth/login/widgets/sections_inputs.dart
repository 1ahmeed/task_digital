import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../layout/layout_screen.dart';


class SectionInputsOfLogin extends StatelessWidget {
  SectionInputsOfLogin({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomTextFormField(
                controller: emailController,
                keyboard: TextInputType.emailAddress,
                validate: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.emailEmptyError;
                  }
                  else if (!value.contains("@") || !value.contains(".")) {
                    return AppStrings.emailNotValid;
                  }else{
                    return null;
                  }

                },
                hintText: "Your Email",
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: AppStrings.fontFamily,
                    fontSize: 12,color: HexColor("#9098B1")
                ),

                label: AppStrings.email,
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,color: HexColor("#9098B1")
                ),
                prefixIcon: Icons.email_outlined,
              colorIcon:HexColor("#9098B1"),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
                controller: passwordController,
                maxLines: 1,
                keyboard: TextInputType.visiblePassword,
                suffixPressed: () {
                },
                onSubmit: (value) {
                  if (formKey.currentState!.validate()) {
                  }
                },
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return AppStrings.passwordEmptyError;
                  }
                  if (value.length < 6) {
                    return AppStrings.passwordNotValid;
                  }
                  return null;

                },colorIcon: HexColor("#9098B1"),
                label: AppStrings.password,
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: AppStrings.fontFamily,
                    fontSize: 12,color: HexColor("#9098B1")
                ),
                hintText: "Password" ,
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: AppStrings.fontFamily,
                    fontSize: 12,color: HexColor("#9098B1")
                ),
                isPassword: true,
                prefixIcon: Icons.lock_outline),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              background: HexColor("#FEC34E"),
              function: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>  const LayoutScreen(),));
                }
              },
              text: AppStrings.signIn,
            ),
          ],
        ),
      ),
    );
  }
}
