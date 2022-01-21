import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SmallSecondaryButton extends StatelessWidget {
  const SmallSecondaryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(25),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () {},
        child: Container(
          width: 30.0.w,
          height: 6.0.h,
          decoration: BoxDecoration(
            border:
                Border.all(color: Theme.of(context).primaryColor, width: 0.5.w),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              "\$2800",
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: Theme.of(context).primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
