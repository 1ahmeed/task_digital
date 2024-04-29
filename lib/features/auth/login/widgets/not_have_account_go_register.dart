import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_digtal/core/utils/app_strings.dart';


import '../../register/register_screen.dart';

class NotHaveAccountGoRegister  extends StatelessWidget {
  const NotHaveAccountGoRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.notHaveAccount,
          style: TextStyle(
              fontSize: 12,
              color: HexColor(
                "#9098B1",
              ),
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 2,
        ),
        InkWell(
            onTap: () {

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  const RegisterScreen(),));
            },
            child: Text(
              AppStrings.register,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#FEC34E"),),
            ))
      ],
    );
  }
}
