import 'package:flutter/material.dart';
import 'build_cart_item.dart';
import 'header_of_section.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Column(
        children: [
          const HeaderOfSections(
            title: "Categories",
            textOfButton: "View all",
          ),
          const SizedBox(height: 7,),
          SizedBox(
            height: 106,
            width:double.infinity,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10,);
                },
                itemBuilder: (context, index) {
                  return const BuildCartItem();
                }),
          ),
        ],
      ),
    );
  }
}


