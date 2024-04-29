import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_digtal/core/utils/app_strings.dart';

import '../../../core/utils/app_assets.dart';

class MainBannerSection extends StatelessWidget {
  MainBannerSection({Key? key}) : super(key: key);
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27.0),
      child: Column(
        children: [
          SizedBox(
            height: 139,
            child: PageView.builder(
              controller: pageController,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount:5,

              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage(AppAssets.imagesBanner1,),fit: BoxFit.cover)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Super Flash Sale",
                        style: TextStyle(
                          fontFamily: AppStrings.fontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,color: Colors.white
                        ),),
                        Text("40% of",
                          style: TextStyle(
                              fontFamily: AppStrings.fontFamily,
                              fontWeight: FontWeight.w700,
                              fontSize: 24,color: Colors.white
                          ),)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 7,),
          Center(
            child: SmoothPageIndicator(
              controller: pageController,
              count: 5,
              effect:  WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: HexColor("#FEC34E"),
                dotColor: HexColor("#8F8C86"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
