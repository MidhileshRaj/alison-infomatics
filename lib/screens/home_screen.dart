import 'package:alison_informatics_task/controller/api_controller.dart';
import 'package:alison_informatics_task/screens/screen_widgets/bottom_bar_widget.dart';
import 'package:alison_informatics_task/screens/screen_widgets/brands_banner.dart';
import 'package:alison_informatics_task/screens/screen_widgets/suggersted_for_you.dart';
import 'package:alison_informatics_task/utils/constants/colors.dart';
import 'package:alison_informatics_task/utils/constants/sizes.dart';
import 'package:alison_informatics_task/utils/constants/strings_constants.dart';
import 'package:alison_informatics_task/widgets/common/my_appbar.dart';
import 'package:alison_informatics_task/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../widgets/common/view_all_button.dart';
import 'error_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<ApiController>(context,listen: false).loginApi();
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
      body: FutureBuilder(future: Provider.of<ApiController>(context,listen: false).getHomePageDetails(), builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(color: MyAppColors.primary,));
        }if(snapshot.hasData){
          return SingleChildScrollView(
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
          );
        }else{
          return const Error404Screen(exception: "Exception occurred in APi" ,);
        }
      },

      ),
    );
  }
}