
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    super.key,
    required this.selectIndex,
  });

  final int selectIndex;

  @override
  Widget build(BuildContext context) {
    return StylishBottomBar(
      // option: AnimatedBarOptions(
      //   // iconSize: 32,
      //   barAnimation: BarAnimation.blink,
      //   iconStyle: IconStyle.animated,

      //   // opacity: 0.3,
      // ),
      option:AnimatedBarOptions(barAnimation: BarAnimation.fade),
      items: [
        BottomBarItem(
          icon: const Icon(
            Iconsax.home,
          ),
          selectedIcon: const Icon(Iconsax.home),
          selectedColor: Colors.purple,
          unSelectedColor: Colors.grey,
          title:  const Text("Home"),
          badgeColor: Colors.green,
          badgePadding: const EdgeInsets.only(left: 4, right: 4),
        ),
        BottomBarItem(
          icon: const Icon(
            Iconsax.tag,
          ),
          selectedIcon: const Icon(Iconsax.tag),
          selectedColor: Colors.teal,
          unSelectedColor: Colors.grey,
          title:  const Text("Brands"),
          badgeColor: Colors.purple,
          badgePadding: const EdgeInsets.only(left: 4, right: 4),
        ),
        BottomBarItem(
          icon: const Icon(
            Iconsax.award,
          ),
          selectedIcon: const Icon(Iconsax.award),
          selectedColor: Colors.teal,
          unSelectedColor: Colors.grey,
          title:  const Text("Best Items"),
          badgeColor: Colors.purple,
          badgePadding: const EdgeInsets.only(left: 4, right: 4),
        ),
        BottomBarItem(
          icon: const Icon(
            Iconsax.category,
          ),
          selectedIcon: const Icon(Iconsax.category),
          selectedColor: Colors.teal,
          unSelectedColor: Colors.grey,
          title:   const Text("Categories"),
          badgeColor: Colors.purple,
          badgePadding: const EdgeInsets.only(left: 4, right: 4),
        ),
        BottomBarItem(
          icon: const Icon(
            Iconsax.user,
          ),
          selectedIcon: const Icon(Iconsax.user),
          selectedColor: Colors.teal,
          unSelectedColor: Colors.grey,
          title: const Text("Account"),
          badgeColor: Colors.purple,
          badgePadding: const EdgeInsets.only(left: 4, right: 4),
        ),
      ],

      currentIndex: selectIndex,
      notchStyle: NotchStyle.square,
      onTap: (index) {
        if (index == selectIndex) return;
      },
    );
  }
}
