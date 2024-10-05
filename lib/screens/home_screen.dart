import 'package:alison_informatics_task/screens/screen_widgets/bottom_bar_widget.dart';
import 'package:alison_informatics_task/screens/screen_widgets/brands_banner.dart';
import 'package:alison_informatics_task/screens/screen_widgets/suggersted_for_you.dart';
import 'package:alison_informatics_task/utils/constants/sizes.dart';
import 'package:alison_informatics_task/utils/constants/strings_constants.dart';
import 'package:alison_informatics_task/widgets/common/my_appbar.dart';
import 'package:alison_informatics_task/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/common/view_all_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectIndex = 0;
    return Scaffold(
      bottomNavigationBar: BottomBarWidget(selectIndex: selectIndex),
      appBar: MyAppBar(
        title: const Image(
          image: AssetImage(appLogo2),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.search_normal),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.heart),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.shopping_bag),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// First Banner
            const Image(
              image: NetworkImage(dummyImage),
            ),

            /// Brands section
            const Gap(MyAppSizes.spaceBtwItems),

            /// Brand title part

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleSection(
                title: 'Our Brands',
                trailing: TextButton(
                  onPressed: () {},
                  child: const ViewAllButton(),
                ),
              ),
            ),

            /// Brands Banner
            const BrandsBanner(),

            const Gap(MyAppSizes.defaultSpace),

            /// Suggested For you
            /// Products section title part

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TitleSection(
                title: 'Suggested For You',
                trailing: ViewAllButton(),
              ),
            ),

            const SuggestedForYou(),

            //
          ],
        ),
      ),
    );
  }
}