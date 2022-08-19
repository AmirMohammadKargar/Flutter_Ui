import 'package:alotaxi/styles/style.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(width: 1, height: 15, color: ColorStyles.grey),
    );
  }
}
