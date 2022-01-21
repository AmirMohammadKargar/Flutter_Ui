import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      elevation: 10.0,
      shadowColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: () {
          onTap!();
        },
        borderRadius: BorderRadius.circular(100),
        child: SizedBox(
          width: 15.0.w,
          height: 15.0.w,
          child: Icon(
            Icons.arrow_forward,
            color: Theme.of(context).canvasColor,
            size: 7.0.w,
          ),
        ),
      ),
    );
  }
}
