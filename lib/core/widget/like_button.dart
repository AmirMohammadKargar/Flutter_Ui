import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: EdgeInsets.all(1.0.w),
        child: Icon(
          Icons.favorite,
          size: 5.0.w,
          color: Colors.red,
        ),
      ),
    );
  }
}
