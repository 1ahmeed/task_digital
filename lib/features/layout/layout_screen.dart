import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_digtal/core/utils/app_strings.dart';
import 'package:task_digtal/features/explore/explore_screen.dart';

import '../account/account_screen.dart';
import '../cart/cart_screen.dart';
import '../home/home_screen.dart';
import '../offer/offer_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
   int  currentIndex=0;
   List<Widget> screens=[
      HomeScreen(),
     const ExploreScreen(),
     const CartScreen(),
     const OfferScreen(),
     const AccountScreen(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:HexColor("#FEC34E") ,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(color: HexColor("#50555C"),
              fontSize: 10,fontFamily: AppStrings.fontFamily,
              fontWeight: FontWeight.w700) ,
          unselectedLabelStyle:TextStyle(color:HexColor("#9098B1"), fontSize: 10,
              fontWeight: FontWeight.w400,fontFamily: AppStrings.fontFamily),
          unselectedItemColor: HexColor("#9098B1"),
          currentIndex: currentIndex,
          onTap: (int index){
            setState(() {
              currentIndex=index;
            });

          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,),
                label: "Home",

            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "search"
            ),
             BottomNavigationBarItem(
                icon: Badge(
                    label: const Text("2"),offset: const Offset(5, -5),
                    alignment: Alignment.topRight,

                    backgroundColor: HexColor("#FB7181"),
                    child: const Icon(Icons.shopping_cart_outlined)),
                label: "cart"
            ),
             const BottomNavigationBarItem(
                icon: Icon(Icons.local_offer_outlined,),
                label: "offer"
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline,),
                label: "account"
            ),
          ],
        ),
        body:screens[currentIndex]
    );
  }
}
