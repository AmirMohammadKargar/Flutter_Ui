import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 15.0.w,
          height: 15.0.w,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              image,
              width: 9.0.w,
            ),
          ),
        ),
        SizedBox(
          height: 0.5.h,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}
