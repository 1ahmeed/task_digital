import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';

class SearchSection extends StatelessWidget {
  SearchSection({Key? key}) : super(key: key);
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 32),
        Expanded(
          child: TextFormField(
            controller: searchController,
            onFieldSubmitted: (value){
              if(value.isEmpty||value==""){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorResultWidget(),));
              }else {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ResultSearchScreen(value: value),));
              }
            },
            decoration: InputDecoration(
              prefixIcon:  Icon(Icons.search,color:HexColor("#FEC34E"),),
              hintText: AppStrings.searchProduct,
              hintStyle:const TextStyle(
                  fontSize: 12,fontFamily: AppStrings.fontFamily,
                  fontWeight: FontWeight.w400
              ) ,
              filled: true,
              fillColor: HexColor("#F3F3F3"),
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                      color:HexColor("#FEC34E")
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:HexColor("#FEC34E")
                  )
              ),
              border:  const OutlineInputBorder(),
              contentPadding: const EdgeInsets.only(top: 12,right:16 ,left:16 ,bottom:12 ),
            ),
          ),
        ),
        const SizedBox(width: 14,),
        InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
          },
          child:CircleAvatar(
              radius: 20,backgroundColor: HexColor("#F3F3F4"),

              child:  Image.asset(AppAssets.imagesSettingIcon,width: 50,height: 50,color: Colors.black,)
              // Icon(FontAwesomeIcons.sliders,size: 20 ,color: HexColor("#9098B1"),
              ),

        ),
        const SizedBox(width: 10,),
        InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
          },
          child:Badge(
              offset: const Offset(5, -5),
              alignment: Alignment.topRight,
              backgroundColor: HexColor("#FB7181"),
              child: Icon(Icons.notifications,size: 23 ,color: HexColor("#9098B1"),)),

        ),
        const SizedBox(width: 21,),

      ],
    );
  }
}