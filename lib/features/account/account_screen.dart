import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_digtal/features/auth/login/login_screen.dart';


class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      body: Center(child: ListTile(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
            builder: (context) => const LoginScreen(),), (route) => false);
        },
        leading:  Icon(
          Icons.logout,color: HexColor("#BA6400"),size: 30,
        ),
        title:  Text(
          "Log out",
          style:   TextStyle(
            fontSize: 12,
            color: HexColor("#223263"),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),),
    ));
  }
}
