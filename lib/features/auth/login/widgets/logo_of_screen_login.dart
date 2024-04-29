import 'package:flutter/material.dart';
import 'package:task_digtal/core/utils/app_assets.dart';


class LogoOfScreenLogin extends StatelessWidget {
  const LogoOfScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: Center(child: Image.asset(AppAssets.imagesLogin,)),
    );
  }
}
