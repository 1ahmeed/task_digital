import 'package:flutter/material.dart';
import 'package:task_digtal/core/utils/app_assets.dart';

import '../../../core/utils/app_strings.dart';

class BuildCartItem extends StatelessWidget {
  const BuildCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 106,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent,
            image: const DecorationImage(
                image: AssetImage(AppAssets.imagesCat1),fit: BoxFit.cover
            )
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text("Accessories",style: TextStyle(
                fontFamily: AppStrings.fontFamily2,
                fontWeight: FontWeight.w500,
                fontSize: 14
            ),),
          ),
        ),

      ),
    );
  }
}
