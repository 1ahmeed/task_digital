import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_digtal/core/utils/app_assets.dart';
import 'package:task_digtal/core/utils/app_strings.dart';

class HotDealsItem extends StatelessWidget {
  const HotDealsItem({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: HexColor("#EBF0FF")
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            Expanded(child: Image.asset(AppAssets.imagesProductItem1, width: 141,height: 143,)),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 105,
              child: Text(
                "FS - Nike Air Max 270 React Max 270 React",
                maxLines: 2,
                style:  TextStyle(
                    color: HexColor("#223263"),
                    fontWeight: FontWeight.w700,
                    fontSize: 12,fontFamily: AppStrings.fontFamily,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(width: 100,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
              
                      minRating: 1,
                      itemSize: 15,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(
                          horizontal: 1.0),
                      itemBuilder: (context, _) =>
                      const SizedBox(
                        child: Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      onRatingUpdate: (rating) {
                        // print(rating);
                      },
                    ),
              
                    const SizedBox(height: 16,),
                    Expanded(
                      child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            r"$299,43",
                            style:  TextStyle(
                                fontFamily: AppStrings.fontFamily,
                                fontWeight: FontWeight.w700,
                                color: HexColor("#FEC34E"),
                                fontSize: 14),
                          )),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              r"$534,33",
                              style:  TextStyle(
                                  color: HexColor("#9098B1"),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AppStrings.fontFamily,
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                          const SizedBox(width: 5,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "24% Off",
                              style:  TextStyle(
                                  color: HexColor("#FB7181"),
                                  fontSize: 10,
                                  fontFamily: AppStrings.fontFamily,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 5,)
          ],
        ),
      ),
    );
  }
}
