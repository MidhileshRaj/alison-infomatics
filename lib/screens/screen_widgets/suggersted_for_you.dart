
import 'package:alison_informatics_task/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/constants/strings_constants.dart';

class SuggestedForYou extends StatelessWidget {
  const SuggestedForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .2,
        width: MediaQuery.sizeOf(context).width,
        child: ListView.separated(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width * .31,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(MyAppSizes.borderRadiusSm),
                  image: const DecorationImage(
                      image: NetworkImage(dummyImage),
                      fit: BoxFit.cover)),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(MyAppSizes.minimumSpace);
          },
        ),
      ),
    );
  }
}
