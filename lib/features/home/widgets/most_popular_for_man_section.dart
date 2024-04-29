import 'package:flutter/material.dart';
import 'package:task_digtal/features/home/widgets/header_of_section.dart';
import 'package:task_digtal/features/home/widgets/product_item.dart';


class MostPopularForManSection extends StatelessWidget {
  const MostPopularForManSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderOfSections(title: "Most Popular For Man", textOfButton: "see more"),
          const SizedBox(height: 6,),
          SizedBox(
            height: 250,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 10,),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) =>
                  const ProductItem()
              ,),
          ),
        ],
      ),
    );
  }
}