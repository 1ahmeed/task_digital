import 'package:flutter/material.dart';
import 'package:task_digtal/features/home/widgets/category_section.dart';
import 'package:task_digtal/features/home/widgets/hot_deals_section.dart';
import 'package:task_digtal/features/home/widgets/main_banner_section.dart';
import 'package:task_digtal/features/home/widgets/most_popular_for_man_section.dart';
import 'package:task_digtal/features/home/widgets/most_popular_for_woman_section.dart';
import 'package:task_digtal/features/home/widgets/most_popular_section.dart';
import 'package:task_digtal/features/home/widgets/search_section.dart';
import 'package:task_digtal/features/home/widgets/second_banner_section.dart';


class HomeScreen extends StatelessWidget {
    HomeScreen({Key? key}) : super(key: key);
   final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.height*.001),
          child: ListView(
            physics: const BouncingScrollPhysics(),
             shrinkWrap: true,
            children: [
              const SizedBox(height: 13,),
              ///search
              SearchSection(),
              const SizedBox(height: 22,),
              ///banner
              MainBannerSection(),
              const SizedBox(height: 11,),
              ///category
            const CategorySection(),
              const SizedBox(height: 29,),
              ///flash
              const MostPopularSection(),
              ///banner2
              const SizedBox(height: 21,),
               const SecondBannerSection(),
              ///popular woman
              const SizedBox(height: 22,),
              const MostPopularForWomanSection(),
              ///popular man
              const SizedBox(height: 22,),
              const MostPopularForManSection(),

              ///Hot deals section
              const SizedBox(height: 22,),
              const HotDealsSection(),
              const SizedBox(height: 5,)
            ],
          ),
        ),
      ),
    );
  }
}






