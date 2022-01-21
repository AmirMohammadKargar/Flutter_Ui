import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MediumPrimaryButton extends StatelessWidget {
  const MediumPrimaryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      shadowColor: Theme.of(context).primaryColor,
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {},
        child: SizedBox(
          width: 45.0.w,
          height: 6.0.h,
          child: Center(
            child: Text(
              "Book Now",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
    );
  }
}
