import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SmallPrimaryButton extends StatelessWidget {
  const SmallPrimaryButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      shadowColor: Theme.of(context).primaryColor,
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {
          onTap!();
        },
        child: SizedBox(
          width: 30.0.w,
          height: 6.0.h,
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
    );
  }
}
