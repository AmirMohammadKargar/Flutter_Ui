import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class Intro extends StatelessWidget {
  const Intro({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);
  final String title, description, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          image,
          width: 70.0.w,
        ),
        SizedBox(
          height: 4.0.h,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          height: 2.0.h,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
