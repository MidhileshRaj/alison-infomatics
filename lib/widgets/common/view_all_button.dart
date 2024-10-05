
import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "View all",
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
            fontSize: 15, decoration: TextDecoration.underline),
      ),
    );
  }
}
