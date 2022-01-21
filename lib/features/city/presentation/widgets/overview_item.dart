import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OverviewItem extends StatelessWidget {
  const OverviewItem({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
  }) : super(key: key);
  final String title, content;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        SizedBox(
          width: 1.0.w,
        ),
        Column(
          children: [
            Text(
              content,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ],
    );
  }
}
