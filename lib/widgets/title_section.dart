
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/constants/sizes.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.title,
    this.trailing,
  });

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .apply(fontSizeFactor: 1.5),
        ),
        const Spacer(),
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: MyAppSizes.minimumSpace),
          child: trailing ?? const SizedBox(),
        ),
        const Gap(MyAppSizes.spaceBtwItems),
      ],
    );
  }
}
