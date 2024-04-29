import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_digtal/core/utils/app_strings.dart';


class HaveAccountGoLogin  extends StatelessWidget {
  const HaveAccountGoLogin({Key? key}) : super(key: key);

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
              Navigator.pop(context);
               // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  const LoginScreen(),));
            },
            child: Text(
              AppStrings.signIn,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#FEC34E"),),
            ))
      ],
    );
  }
}
