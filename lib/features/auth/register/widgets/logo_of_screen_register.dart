import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';


class LogoOfScreenRegister extends StatelessWidget {
  const LogoOfScreenRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: Center(child: Image.asset(AppAssets.imagesRegister,)),
    );
  }
}
