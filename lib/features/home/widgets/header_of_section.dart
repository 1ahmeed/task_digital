import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/utils/app_strings.dart';

class HeaderOfSections extends StatelessWidget {
  const HeaderOfSections({
    super.key, required this.title, required this.textOfButton,
  });
  final String title;
  final String textOfButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Row(
        children: [
          Text(title,style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,color: HexColor("#4A4A4A"),
              fontFamily: AppStrings.fontFamily2
          ), ),
          const Spacer(),
          InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const AllCategoriesScreen(),));
            },
            child: Text(textOfButton,style: TextStyle(
                fontSize: 14,
                color: HexColor("#FEC34E"),
                fontWeight: FontWeight.w500,
                fontFamily: AppStrings.fontFamily2
            ), ),
          ),
        ],
      ),
    );
  }
}