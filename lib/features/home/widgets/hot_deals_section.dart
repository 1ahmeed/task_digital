import 'package:flutter/material.dart';
import 'package:task_digtal/features/home/widgets/header_of_section.dart';
import 'hot_deals_item.dart';

class HotDealsSection extends StatelessWidget {
  const HotDealsSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const HeaderOfSections(title: "Hot Deals", textOfButton: "See more"),
          const SizedBox(height: 7,),
          GridView.builder(
              itemCount:4,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:   SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 13,
                crossAxisSpacing: 12,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height * 0.60),
              ),
              itemBuilder: (context, index) => const HotDealsItem()
          ),
        ],
      ),
    );
  }
}