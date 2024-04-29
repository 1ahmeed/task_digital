import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../layout/layout_screen.dart';


class SectionInputsOfRegister extends StatelessWidget {
  SectionInputsOfRegister({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomTextFormField(
              controller: nameController,
              keyboard: TextInputType.name,
              validate: (value) {
                if (value!.isEmpty) {
                  return AppStrings.nameEmptyError;
                }
                  return null;
              },
              hintText: "Your Name",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: AppStrings.fontFamily,
                  fontSize: 12,color: HexColor("#9098B1")
              ),

              label: "Your Name",
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,color: HexColor("#9098B1")
              ),
              prefixIcon: Icons.person_outline_rounded,
              colorIcon:HexColor("#9098B1"),
            ),
            const SizedBox(
              height: 8,
            ),
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
              height: 8,
            ),
            CustomTextFormField(
                controller: phoneController,
                maxLines: 1,
                keyboard: TextInputType.phone,
                suffixPressed: () {
                },
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return AppStrings.phoneEmptyError;
                  }
                  if (value.length ==  11) {
                    return "Phone must equal 11 digits";
                  }
                  return null;

                },colorIcon: HexColor("#9098B1"),
                label: AppStrings.phone,
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
                prefixIcon: Icons.phone),
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
              text: AppStrings.register,
            ),
          ],
        ),
      ),
    );
  }
}
