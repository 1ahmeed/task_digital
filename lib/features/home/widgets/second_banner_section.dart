import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_digtal/core/utils/app_strings.dart';
import 'package:task_digtal/features/home/widgets/header_of_section.dart';

import '../../../core/utils/app_assets.dart';

class SecondBannerSection extends StatefulWidget {
  const SecondBannerSection({Key? key}) : super(key: key);

  @override
  State<SecondBannerSection> createState() => _SecondBannerSectionState();
}

class _SecondBannerSectionState extends State<SecondBannerSection> {
  final pageController = PageController();

  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          const HeaderOfSections(title: "About Us", textOfButton: ""),
          SizedBox(
            height: 170,
            child: PageView.builder(
              controller: pageController,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      AppAssets.imagesBanner2,
                    ),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 22,
                          ),
                          const Text(
                            "Who we are?",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: AppStrings.fontFamily,
                                fontSize: 24),
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              "Lorem ipsum dolor sit amet,"
                              " consectetur adipiscing elit, "
                              "sed do eiusmod tempor consectetur adipiscing elit, sed do eiusmod tempor  "
                              " consectetur adipiscing elit, "
                              "sed do eiusmod tempor consectetur adipiscing elit, sed do eiusmod tempor  ",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AppStrings.fontFamily,
                                  fontSize: 12),
                              maxLines: isReadMore ? 100:3  ,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  isReadMore = !isReadMore;
                                });
                              },
                              child: Text(
                                "Read more",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily2,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#FEC34E")),
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
